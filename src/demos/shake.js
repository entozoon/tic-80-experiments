// script: js

var shake = 0;
var d = 4;

function TIC() {
  if (btnp() != 0) {
    shake = 30;
  }
  if (shake > 0) {
    poke(0x3ff9, -d + Math.random() * (d * 2));
    poke(0x3ff9 + 1, -d + Math.random() * (d * 2));
    shake = shake - 1;
    if (shake == 0) {
      memset(0x3ff9, 0, 2);
    }
  }
  cls(12);
  print("PRESS A/S/Z/X TO SHAKE THE SCREEN!", 24, 64);
}
