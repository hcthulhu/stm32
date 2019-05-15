#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_i2c.h"
#include "stm32f0xx_ll_tim.h"

#include "game.h"
#include "models.h"
#include "freq.h"

uint32_t step = 1;
uint8_t gmov_flag = 0;
uint8_t bul_n = 0;
bullet ship_bul[4];
int8_t x_ship = 64;
uint16_t score = 0;
uint8_t hp = 3;
extern const unsigned char spine_map[128 * 64];



static uint8_t fib[100] = {14, 216, 40, 170, 208, 168, 236, 156, 173,
                    148, 89, 132, 196, 93, 129, 242, 91, 29, 3,
                    83, 39, 225, 182, 96, 232, 175, 189, 161,
                    88, 65, 237, 181, 94, 192, 133, 31, 145, 22,
                    117, 190, 130, 231, 28, 107, 117, 102, 133,
                    77, 85, 52, 55, 1};

static uint16_t lastRand = 0;

uint8_t random () {
    static uint8_t randNum = 54;

    if (randNum == 99)
        randNum = 0;
    else
        randNum++;

    int8_t n24 = randNum - 24;
    int8_t n55 = randNum - 55;
    lastRand = (fib[n24 < 0 ? 100 + n24 : n24] + fib[n55 < 0 ? 100 + n55 : n55]) % 256;
    fib[randNum] = lastRand;
    return lastRand;
}

void sm_delay() {
    for (uint32_t i = 0; i < 10000; i++) {}
}

void start() {
    oled_pic(spine_map, 100);
    oled_update();
    for (uint8_t i = 0; i < 39; i++) {
        LL_TIM_SetPrescaler(TIM2, freq[i]);
        for (uint8_t j = 0; j < dur[i]; j++){}
    }
}

bullet ship_fire (uint8_t x, uint8_t y) {
    bullet bul = { -3, x, y, 1, 7, 0, {sh_bul, sh_bul, sh_bul, sh_bul} };
    return bul;
}

bullet alien_fire (alien al, pxl const *model[4]) {
    uint8_t x = al.x + al.x_size/2 - 1;
    uint8_t y = al.y + al.y_size + 1;
    if (!al.is_dead) {
        bullet bul = { 1, x, y, 3, 7, 0, {model[0], model[1], model[2], model[3]} };
        return bul;
    }
    bullet bul = { 3, x, y, 3, 7, 1, {model[0], model[1], model[2], model[3]} };
    return bul;
}

void al_update (alien *al, uint8_t d_y) {
    if (!al->is_dead) {
        al->x += al->x_speed;
        if (al->step%32 == 0) {
            al->y += al->y_speed;
            al->x_speed = -al->x_speed;
        }
        if (al->y + al->y_size - 1 >= d_y) {
            gmov_flag = 1;
            if (score > 100) {
                score -= 100;
            } else {
                score = 0;
            }

        }
    }
    al->step++;
}

void bul_update (bullet *bul) {
    if (!bul->is_dead) {
        bul->y += bul->y_speed;
        if (bul->y < -7 || bul->y > 64) {
            bul->is_dead = 1;
        }
    }
}

void draw_al (alien al, enum color_t color) {
    if (!al.is_dead) {
        oled_set_model(al.model[al.step/4%2], al.x, al.y, color);
    }
}

void draw_bul (bullet bul, enum color_t color) {
    if (!bul.is_dead) {
        oled_set_model(bul.model[step%4], bul.x, bul.y, color);
    }
}

void draw_ship (ship ship, enum color_t color) {
    oled_set_model(ship.model, ship.x, ship.y, color);
}

void bul_init (bullet *bul, const pxl model_1[], const pxl model_2[], const pxl model_3[], const pxl model_4[]) {
    bul->y_speed = 0;
    bul->x = 0;
    bul->y = 0;
    bul->x_size = 0;
    bul->y_size = 0;
    bul->is_dead = 1;
    bul->model[0] = model_1;
    bul->model[1] = model_2;
    bul->model[2] = model_3;
    bul->model[3] = model_4;
}

uint8_t check_al_hit (bullet *bul, alien *al) {
    if (bul->is_dead == 1) {
        return 0;
    }

    if (al->is_dead == 0) {
        if (((bul->x >= al->x) && (bul->x <= al->x + al->x_size - 1)) &&
            (((bul->y >= al->y) && (bul->y <= al->y + al->y_size - 1)) ||
            ((bul->y + bul->y_size - 1 >= al->y) && (bul->y + bul->y_size - 1 <= al->y + al->y_size - 1)))) {
            al->is_dead = 1;
            bul->is_dead = 1;
            return 1;
        }
    }
    return 0;
}

uint8_t check_bul_hit (bullet *bul, bullet *al_bul) {
    if (bul->is_dead == 1) {
        return 0;
    }

    if (al_bul->is_dead == 0) {
        if (((bul->x >= al_bul->x) && (bul->x <= al_bul->x + al_bul->x_size - 1)) &&
            ((bul->y >= al_bul->y) && (bul->y <= al_bul->y + al_bul->y_size - 1))) {
            al_bul->is_dead = 1;
            bul->is_dead = 1;
            return 1;
        }
    }

    return 0;
}

uint8_t check_ship_hit (bullet *al_bul, ship *ship) {
    if (al_bul->is_dead == 1) {
        return 0;
    }
    if (((al_bul->x >= ship->x) && (al_bul->x <= ship->x + ship->x_size - 1) &&
        (al_bul->y >= ship->y) && (al_bul->y <= ship->y + ship->y_size - 1)) ||
        ((al_bul->x + al_bul->x_size - 1 >= ship->x) && (al_bul->x + al_bul->x_size - 1 <= ship->x + ship->x_size - 1) &&
        (al_bul->y + al_bul->y_size - 1 >= ship->y) && (al_bul->y + al_bul->y_size - 1 <= ship->y + ship->y_size - 1))) {
            al_bul->is_dead = 1;
            hp--;
            if (hp == 0) {
                gmov_flag = 1;
            }
            return 1;
    }
    return 0;
}

void delay () {
    for (uint32_t i = 0; i < 5000000; i++) {}
}

void game_over () {
    oled_clr(clBlack);
    oled_set_cursor(7, 3);
    if (gmov_flag == 1) {
        oled_set_cursor(6, 3);
        xprintf("GAME OVER\n");
    } else {
        oled_set_cursor(7, 3);
        xprintf("YOU WIN\n");
    }
    oled_update();
    delay();
}

void draw_hp() {
    oled_set_cursor(17, 4);
    xprintf("HP=%d", hp);
}

void print_score () {
    oled_clr(clBlack);
    oled_set_cursor(6, 3);
    xprintf("SCORE : %d\n", score);
    oled_update();
}

void level (uint8_t n) {
    oled_clr(clBlack);
    oled_set_cursor(8, 3);
    xprintf("LEVEL %d\n", n);
    oled_update();
    delay();
}

void ship_update (ship *ship, uint8_t x, uint8_t y) {
    ship->x = x;
    ship->y = y;
}

void game_1 (enum color_t color) {

    enum color_t r_color = (color == clWhite) ? clBlack : clWhite;

    level(2);

    alien al_1[12];
    for (uint8_t i = 0; i < 12; i++) {
        if (i < 6) {
            al_1[i] = spawn_al_1(5 + 15*i, 0);
        } else {
            al_1[i] = spawn_al_1(5 + 15*(i - 6), 10);
        }
    }

    bullet al_bul[4];
    for (uint8_t i = 0; i < 4; i++) {
        bul_init (&al_bul[i], bul_1_0, bul_1_1, bul_1_2, bul_1_3);
        bul_init (&ship_bul[i], sh_bul, sh_bul, sh_bul, sh_bul);
    }

    ship ship = {11, 7, x_ship, 56, ship_1};

    uint8_t alive = 12;
    uint8_t al_bul_n = 0;
    uint8_t div = 16;
    uint8_t rand1 = 0;
    uint8_t rand2 = 0;

    while (1) {
        oled_clr(color);
        death_line(45, r_color);

        div = 16/(13 - alive);

        if (step%(3*(alive + 12)) == 0) {
            rand1 = (random() + x_ship%12)%12;
            rand2 = (rand1 + rand1%4 + 1)%12;
            al_bul[al_bul_n] = alien_fire(al_1[rand1], al_1[rand1].bmodel );
            al_bul[al_bul_n + 1] = alien_fire(al_1[rand2], al_1[rand2].bmodel );
            al_bul_n += 2;
            al_bul_n %= 4;
        }

        for (uint8_t i = 0; i < 4; i++) {
            if (!ship_bul[i].is_dead) {
                draw_bul(ship_bul[i], r_color);
                bul_update(&ship_bul[i]);
                for (uint8_t j = 0; j < 12; j++) {
                    if (check_al_hit(&ship_bul[i], &al_1[j])) {
                        alive--;
                        oled_set_model(boom, al_1[j].x + (al_1[j].x_size - 6)/2, al_1[j].y, r_color);
                        score += 20;
                    }
                }
                for (uint8_t j = 0; j < 4; j++) {
                    check_bul_hit(&ship_bul[i], &al_bul[j]);
                }
            }
            if (!al_bul[i].is_dead) {
                check_ship_hit(&al_bul[i], &ship);
                draw_bul(al_bul[i], r_color);
                bul_update(&al_bul[i]);
            }

        }

        for (uint8_t i = 0; i < 12; i++) {
            if (!al_1[i].is_dead) {
                draw_al(al_1[i], r_color);
                if ((step % div) == 0) {
                    al_update (&al_1[i], 45);
                }
            }
        }

        ship_update(&ship, x_ship, 56);
        draw_ship(ship, r_color);
        draw_hp(ship);

        step++;
        oled_update();
        if (gmov_flag == 1 || alive == 0) {
            break;
        }
    }

    score += hp*50;
    if (score >= step/10) {
        score -= step/10;
    } else {
        score = 0;
    }

    step = 1;
    bul_n = 0;
    x_ship = 64;
    return;
}

void game_2 (enum color_t color) {
    enum color_t r_color = (color == clWhite) ? clBlack : clWhite;

    level(1);

    alien al_2[12];
    for (uint8_t i = 0; i < 12; i++) {
        if (i < 6) {
            al_2[i] = spawn_al_2(5 + 15*i, 0);
        } else {
            al_2[i] = spawn_al_2(5 + 15*(i - 6), 10);
        }
    }

    bullet al_bul[4];
    for (uint8_t i = 0; i < 4; i++) {
        bul_init (&al_bul[i], bul_2_0, bul_2_1, bul_2_2, bul_2_3);
        bul_init (&ship_bul[i], sh_bul, sh_bul, sh_bul, sh_bul);
    }

    ship ship = {11, 7, x_ship, 56, ship_1};

    uint8_t alive = 12;
    uint8_t al_bul_n = 0;
    uint8_t div = 22;
    uint8_t rand1 = 0;
    uint8_t rand2 = 0;

    while (1) {
        oled_clr(color);
        death_line(45, r_color);

        div = 22/(13 - alive);

        if (step%(3*(alive + 12)) == 0) {
            rand1 = (random() + x_ship%12)%12;
            rand2 = (rand1 + rand1%4 + 1)%12;
            al_bul[al_bul_n] = alien_fire(al_2[rand1], al_2[rand1].bmodel );
            al_bul[al_bul_n + 1] = alien_fire(al_2[rand2], al_2[rand2].bmodel );
            al_bul_n += 2;
            al_bul_n %= 4;
        }

        for (uint8_t i = 0; i < 4; i++) {
            if (!ship_bul[i].is_dead) {
                draw_bul(ship_bul[i], r_color);
                bul_update(&ship_bul[i]);
                for (uint8_t j = 0; j < 12; j++) {
                    if (check_al_hit(&ship_bul[i], &al_2[j])) {
                        alive--;
                        oled_set_model(boom, al_2[j].x + (al_2[j].x_size - 6)/2, al_2[j].y, r_color);
                        score += 10;
                    }
                }
                for (uint8_t j = 0; j < 4; j++) {
                    check_bul_hit(&ship_bul[i], &al_bul[j]);
                }
            }
            if (!al_bul[i].is_dead) {
                check_ship_hit(&al_bul[i], &ship);
                draw_bul(al_bul[i], r_color);
                bul_update(&al_bul[i]);
            }

        }

        for (uint8_t i = 0; i < 12; i++) {
            if (!al_2[i].is_dead) {
                draw_al(al_2[i], r_color);
                if ((step % div) == 0) {
                    al_update (&al_2[i], 45);
                }
            }
        }

        ship_update(&ship, x_ship, 56);
        draw_ship(ship, r_color);
        draw_hp(ship);

        step++;
        oled_update();
        if (gmov_flag == 1 || alive == 0) {
            break;
        }
    }

    score += hp*50;
    if (score >= step/10) {
        score -= step/10;
    } else {
        score = 0;
    }

    step = 1;
    bul_n = 0;
    x_ship = 64;
    return;
}

void game_3 (enum color_t color) {
    enum color_t r_color = (color == clWhite) ? clBlack : clWhite;

    level(3);

    alien al_3[14];
    for (uint8_t i = 0; i < 14; i++) {
        if (i < 7) {
            al_3[i] = spawn_al_3(5 + 13*i, 0);
        } else {
            al_3[i] = spawn_al_3(5 + 13*(i - 7), 10);
        }
    }

    bullet al_bul[4];
    for (uint8_t i = 0; i < 4; i++) {
        bul_init (&al_bul[i], bul_3_0, bul_3_1, bul_3_2, bul_3_3);
        bul_init (&ship_bul[i], sh_bul, sh_bul, sh_bul, sh_bul);
    }

    ship ship = {11, 7, x_ship, 56, ship_1};

    uint8_t alive = 14;
    uint8_t al_bul_n = 0;
    uint8_t div = 12;
    uint8_t rand1 = 0;
    uint8_t rand2 = 0;

    while (1) {
        oled_clr(color);
        death_line(45, r_color);

        div = 16/(15 - alive);

        if (step%(2*(alive + 14)) == 0) {
            rand1 = (random() + x_ship%14)%14;
            rand2 = (rand1 + rand1%4 + 1)%14;
            al_bul[al_bul_n] = alien_fire(al_3[rand1], al_3[rand1].bmodel );
            al_bul[al_bul_n + 1] = alien_fire(al_3[rand2], al_3[rand2].bmodel );
            al_bul_n += 2;
            al_bul_n %= 4;
        }

        for (uint8_t i = 0; i < 4; i++) {
            if (!ship_bul[i].is_dead) {
                draw_bul(ship_bul[i], r_color);
                bul_update(&ship_bul[i]);
                for (uint8_t j = 0; j < 14; j++) {
                    if (check_al_hit(&ship_bul[i], &al_3[j])) {
                        alive--;
                        oled_set_model(boom, al_3[j].x + (al_3[j].x_size - 6)/2, al_3[j].y, r_color);
                        score += 30;
                    }
                }
                for (uint8_t j = 0; j < 4; j++) {
                    check_bul_hit(&ship_bul[i], &al_bul[j]);
                }
            }
            if (!al_bul[i].is_dead) {
                check_ship_hit(&al_bul[i], &ship);
                draw_bul(al_bul[i], r_color);
                bul_update(&al_bul[i]);
            }
        }

        for (uint8_t i = 0; i < 14; i++) {
            if (!al_3[i].is_dead) {
                draw_al(al_3[i], r_color);
                if ((step % div) == 0) {
                    al_update (&al_3[i], 45);
                }
            }
        }

        ship_update(&ship, x_ship, 56);
        draw_ship(ship, r_color);
        draw_hp(ship);

        step++;
        oled_update();
        if (gmov_flag == 1 || alive == 0) {
            break;
        }
    }

    score += hp*50;
    if (score >= step/10) {
        score -= step/10;
    } else {
        score = 0;
    }

    step = 1;
    bul_n = 0;
    x_ship = 64;
    return;
}

alien spawn_al_1(uint8_t x, uint8_t y) {
    alien al_1 = {1, 2, x, y, 11, 8, 1, 0, {al_1_0, al_1_1}, {bul_1_0, bul_1_1, bul_1_2, bul_1_3} };
    return al_1;
}

alien spawn_al_2(uint8_t x, uint8_t y) {
    alien al_1 = {1, 2, x, y, 11, 8, 1, 0, {al_2_0, al_2_1}, {bul_2_0, bul_2_1, bul_2_2, bul_2_3} };
    return al_1;
}

alien spawn_al_3(uint8_t x, uint8_t y) {
    alien al_1 = {1, 2, x, y, 11, 8, 1, 0, {al_3_0, al_3_1}, {bul_3_0, bul_3_1, bul_3_2, bul_3_3} };
    return al_1;
}

alien init_al(uint8_t x, uint8_t y) {
    alien al = {1, 2, x, y, 11, 8, 1, 1, {al_3_0, al_3_1}, {bul_3_0, bul_3_1, bul_3_2, bul_3_3} };
    return al;
}

void game_inf (enum color_t color) {
    enum color_t r_color = (color == clWhite) ? clBlack : clWhite;

    alien alien[10];
    for (uint8_t i = 0; i < 10; i++) {
        alien[i] = init_al(0, 0);
    }

    bullet al_bul[8];
    for (uint8_t i = 0; i < 4; i++) {
        bul_init(&ship_bul[i], sh_bul, sh_bul, sh_bul, sh_bul);
    }
    for (uint8_t i = 0; i < 8; i++) {
        bul_init(&al_bul[i], sh_bul, sh_bul, sh_bul, sh_bul);
    }

    ship ship = {11, 7, x_ship, 56, ship_1};

    uint8_t al_bul_n = 0;
    uint8_t al_n = 0;
    uint8_t rand1 = 0;
    uint8_t rand2 = 0;
    uint8_t rand3 = 0;

    while (1) {
        oled_clr(color);
        death_line(45, r_color);

        if (step%140 == 0) {
            rand3 = (random() + rand1 + rand2)%80;
            switch (rand1%3) {
                case 0: {
                    alien[al_n] = spawn_al_1(rand3, -7);
                    break;
                }
                case 1: {
                    alien[al_n] = spawn_al_2(rand3, -7);
                    break;
                }
                case 2: {
                    alien[al_n] = spawn_al_3(rand3, -7);
                    break;
                }
            }
            al_n++;
            al_n %= 10;
        }

        if (step%35 == 0) {
            rand1 = (random() + x_ship%14)%10;
            rand2 = (rand1 + rand1%4 + 1)%10;
            al_bul[al_bul_n] = alien_fire(alien[rand1], alien[rand1].bmodel );
            al_bul[al_bul_n + 1] = alien_fire(alien[rand2], alien[rand1].bmodel );
            al_bul_n += 2;
            al_bul_n %= 8;
        }

        for (uint8_t i = 0; i < 4; i++) {
            if (!ship_bul[i].is_dead) {
                draw_bul(ship_bul[i], r_color);
                bul_update(&ship_bul[i]);
                for (uint8_t j = 0; j < 10; j++) {
                    if (check_al_hit(&ship_bul[i], &alien[j])) {
                        oled_set_model(boom, alien[j].x + (alien[j].x_size - 6)/2, alien[j].y, r_color);
                        score += 30;
                    }
                }
                for (uint8_t j = 0; j < 8; j++) {
                    check_bul_hit(&ship_bul[i], &al_bul[j]);
                }
            }
        }

        for (uint8_t i = 0; i < 8; i++) {
            if (!al_bul[i].is_dead) {
                check_ship_hit(&al_bul[i], &ship);
                draw_bul(al_bul[i], r_color);
                bul_update(&al_bul[i]);
            }
        }

        for (uint8_t i = 0; i < 10; i++) {
            if (!alien[i].is_dead) {
                draw_al(alien[i], r_color);
                al_update (&alien[i], 45);
            }
        }

        ship_update(&ship, x_ship, 56);
        draw_ship(ship, r_color);
        draw_hp(ship);

        step++;
        oled_update();

        if (gmov_flag == 1) {
            break;
        }
    }

    step = 1;
    bul_n = 0;
    x_ship = 64;
    return;
}
