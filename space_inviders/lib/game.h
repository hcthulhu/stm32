#ifndef GAME_H
#define GAME_H

#include "oled_driver.h"
#include "xprintf.h"

typedef struct alien {
    int8_t x_speed;
    int8_t y_speed;
    int8_t x;
    int8_t y;
    int8_t x_size;
    int8_t y_size;
    uint16_t step;

    int8_t is_dead;
    const pxl *model[2];
    const pxl *bmodel[4];
} alien;

typedef struct bullet {
    int8_t y_speed;
    int8_t x;
    int8_t y;
    int8_t x_size;
    int8_t y_size;

    int8_t is_dead;
    const pxl *model[4];
} bullet;

typedef struct ship {
    int8_t x_size;
    int8_t y_size;
    int8_t x;
    int8_t y;

    const pxl *model;
} ship;


uint8_t random ();

bullet ship_fire (uint8_t x, uint8_t y);
bullet alien_fire (alien alien, const pxl *model[4]);
void al_update (alien *al, uint8_t d_y);
void bul_update (bullet *bul);
void ship_update (ship *ship, uint8_t x, uint8_t y);
void draw_al (alien al, enum color_t color);
void draw_bul (bullet bul, enum color_t color);
void draw_ship (ship ship, enum color_t color);
void bul_init (bullet *bul, const pxl model_1[], const pxl model_2[], const pxl model_3[], const pxl model_4[]);
uint8_t check_al_hit (bullet *bul, alien *al);
uint8_t check_bul_hit (bullet *bul, bullet *al_bul);
uint8_t check_ship_hit (bullet *al_bul, ship *ship);
void game_over ();
void print_score ();
void game_1 (enum color_t color);
void game_2 (enum color_t color);
void game_3 (enum color_t color);
void game_inf (enum color_t color);
void delay ();
void draw_hp();
void level (uint8_t n);
alien spawn_al_1(uint8_t x, uint8_t y);
alien spawn_al_2(uint8_t x, uint8_t y);
alien spawn_al_3(uint8_t x, uint8_t y);
void sm_delay();
void start();

#endif //GAME_H
