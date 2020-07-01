# patcher - Atari 8-bit XEX patcher

This is a quick patcher tool that runs "monitor style" commands over a XEX file to create a new modified XEX file.

## Recommended workflow
If you need to do simple changes on a XEX game, these are the steps that I recommend using the Atari800 emulator on Linux or similar

1. Run the game
2. Press F8 to open the monitor
3. Examine the changes and/or do the changes in the memory using the "c" command
4. Write down your changes to a simple text patch file
5. Use the cont command to continue the game
6. Go to step 2

As you progress you will have a text patch file with several "c" commands and probably some annotations for yourself.
You can see [my patch file for Screaming Wings](https://github.com/fcatrin/a8tools/blob/master/patches/screaming_wings/screaming_wings.monpatch).

As you progress you can run your "c" commands with a simple copy/past to the monitor, but at some point you will want to create
a new XEX file with all your changes applied. This is where you use this tool.

# Running the patcher
Run the patcher as

```
php -f patcher.php xexfile patchfile [newxexfile]
```

for example

```
php -f patcher.php game.xex game.monpatch 
```

This will create a patched_game.xex file with all your changes

## Patch file

The patch file uses two type of commends: c for change and s/r for search and replace.
Here is an example

```
c 4245 D4 ; color for the trees
c 4028 96 ; color for the sea

c 39d0 00 00 80 00 00 00 02 00 ; wave 1
c 39c8 02 00 00 00 00 20 00 00 ; wave 2

; search and replace a specific pattern of bytes
s A9 26 8D C3 02 8D C2 02 A9 03 8D 0A D0 8D 0B D0
r A9 90 8D C3 02 8D C2 02 A9 03 8D 0A D0 8D 0B D0
```

All addresses and byte codes are hexadecimal and they can be of any long.
All comments start with ";"

For more advanced patches you can use the [a8disasm tool](https://github.com/fcatrin/a8tools/tree/master/disasm).
Here you will find a [full post (in spanish) about patching Scraming Wings with this patcher and a8diasm]
(http://franco.arealinux.cl/2020/06/a8tools-y-como-mejorar-screaming-wings-para-atari-800/).

Franco Catrin 2020
