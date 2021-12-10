#include QMK_KEYBOARD_H

#define PRO_MICRO_LED_TX D5
#define PRO_MICRO_LED_RX B0

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
  [0] = LAYOUT( /* Base */
	KC_F13, KC_F14, KC_F15, KC_F16
  )
};

typedef const uint16_t comb_keys_t[];
static PROGMEM comb_keys_t
  comb_keys_F17 = {KC_F13, KC_F14, COMBO_END}, comb_keys_F18 = {KC_F13, KC_F15, COMBO_END},
  comb_keys_F19 = {KC_F13, KC_F16, COMBO_END}, comb_keys_F20 = {KC_F14, KC_F15, COMBO_END},
  comb_keys_F21 = {KC_F14, KC_F16, COMBO_END}, comb_keys_F22 = {KC_F15, KC_F16, COMBO_END};
combo_t key_combos[COMBO_COUNT] = {
  COMBO( comb_keys_F17, KC_F17 ),  COMBO( comb_keys_F18, KC_F18 ),
  COMBO( comb_keys_F19, KC_F19 ),  COMBO( comb_keys_F20, KC_F20 ),
  COMBO( comb_keys_F21, KC_F21 ),  COMBO( comb_keys_F22, KC_F22 )
};


void matrix_init_user(void) {
  setPinOutput(PRO_MICRO_LED_TX);
  setPinOutput(PRO_MICRO_LED_RX);
  writePin(PRO_MICRO_LED_TX, 1); /* LED off */
  writePin(PRO_MICRO_LED_RX, 1); /* LED off */
}

void matrix_scan_user(void) {

}

void led_set_user(uint8_t usb_led) {

}

