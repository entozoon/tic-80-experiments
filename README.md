# [Tic-80](https://github.com/nesbox/TIC-80/) Experiments

## [DEMO 🎮](https://entozoon.github.io/tick-80-experiments/dist/example.html)

## To Do

* Console output for dev
* Lua to JS converter for examples (see notes at end)

## New Programme

Copy src/example.js and create a new file, then use similar commands to below:

## Dev

    ./tic80 -code-watch src/example.js

### Refresh - it auto syncs but not refresh

    Ctrl-R

## Compile (.exe, .html, .tic cartridge, respectively)

As above, but then hit escape and type:

    export native
    export html
    save example
    folder (to find where the last .tic one is output)

Copy all those bad boys to /dist

## Run Compiled

Open .exe or .html as normal, or to run compiled cartridge:

    ./tic80 dist/example.tic

## Reference (tic80.exe)

https://github.com/nesbox/TIC-80/wiki

NOTE: These don't frickin work, at least on windows:

    tic80 .                                  will use current directory as storage
    tic80 ../path/to/cart.tic                will use ../path/to/ as storage and load cart.tic

These are fine:

    tic80 -code game.lua                     load and run the code without startup animation
    tic80 -code-watch game.lua               same as -code but also reload it when TIC is focused

Not convinced about this one though:

    tic80 game.tic -code game.lua            load cartridge, inject the code and run without startup animation
    tic80 > log.txt                          all trace output is redirect to file log.txt
    tic80 | Out-File log.txt                 same as upper one but in case of PowerShell
    tic80 cart.tic -sprites blahblah.gif     inject sprites to cart.tic

    tic80 -surf                              to start in SURF mode
    tic80 -nosound                           to start in silent mode
    tic80 -fullscreen                        to start in fullscreen mode
    tic80 -skip                              to skip startup animation (0.60.0)

## Origin story (obsolete)

Create a blank js game [swap js for lua if that's your thing]:

    tic80
    folder  (can't escape this folder, trust)
    new js
    save example
    edit
    [copy all code to, say src/example.js]

## Lua to JS (surely there's a library, but jotting down notes nonetheless)

#### Add to header

    // script: js

#### Replaces

| Lua              | JS                                 |
| ---------------- | ---------------------------------- |
| ~=               | !=                                 |
| then             | {                                  |
| end              | }                                  |
| if foo=2         | if (foo=2)                         |
| foo=2            | var foo=2                          |
| math.random(a,b) | `a + Math.random() * (b - a) * 2`? |

^ Enough for shake.js
