// script: js

shake = 0;
d = 4;
function TIC() {
    if (btnp() != 0) {
        shake = 30;
    }
    if (shake > 0) {
        poke(, math.random(-d, d));
        poke( + 1, math.random(-d, d));
        shake = shake - 1;
        if (shake == 0) {
            memset(, 0, 2);
        }
    }
    cls(12);
    print("PRESS A/S/Z/X TO SHAKE THE SCREEN!", 24, 64);
}
