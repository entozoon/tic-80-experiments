// title:  game title
// author: game developer
// desc:   short description
// script: js

var t = 0;
var x = 96;
var y = 24;

function TIC() {
  if (btn(0)) y--;
  if (btn(1)) y++;
  if (btn(2)) x--;
  if (btn(3)) x++;

  cls(13);
  print("HELLO SATAN!", 84, 60);
  t++;
}
