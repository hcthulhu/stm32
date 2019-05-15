#ifndef __OLED_DRIVER__
#define __OLED_DRIVER__

#define GMEM_WIDTH 128
#define GMEM_HEIGHT 64
#define GMEM_SIZE (GMEM_WIDTH * GMEM_HEIGHT / 8)

/*
 * Simple strucutre to define fonts
 * Refer to font5x7.c for example
 */
typedef struct {
    const uint8_t *font;
    uint8_t width;
    uint8_t height;
    uint8_t (*get_pix)(uint8_t, uint8_t, uint8_t);
} font_desc_t;

enum color_t {
    clBlack = 0x00,
    clWhite = 0xFF
};

typedef struct {
    uint8_t x;
    uint8_t y;
} pxl;


/*
 * initialize display
 */
void oled_config(void);

/*
 * clear graphic memory
 */
void oled_clr(enum color_t);

/*
 * flush graphic mem to display
 */
void oled_update(void);

/*
 * Put a pixel with a specified color
 */
void oled_set_pix(uint8_t x, uint8_t y, enum color_t color);

/*
 * Put square
 */
void oled_set_square(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, enum color_t color_in, enum color_t color_out);

/*
 * Put round
 */
void oled_set_circle(int32_t x, int32_t y, int32_t r, int32_t d, enum color_t color_in, enum color_t color_out);

/*
 * Put a character
 */
void oled_putc(char ch);

/*
 * Set current cursor
 */
void oled_set_cursor(uint8_t x, uint8_t y);

/*
 * Print picture with a given threshold for b/w
 */
void oled_pic(const uint8_t *im, uint8_t thrsh);

/*
 * Print picture using dithering algorithm for
 * adaptive b/w
 */
void oled_pic_dithering(const uint8_t *im);

/*
 * Print model
 */
void oled_set_model(const pxl model[], uint8_t x, uint8_t y, enum color_t color);

/*
 * Reverse pixel
 */
void oled_rev_pix(uint8_t x, uint8_t y);

/*
 * Reverse square
 */
void oled_rev_square(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2);

/*
 * Draw line
 */
void death_line (uint8_t y, enum color_t color);

#endif
