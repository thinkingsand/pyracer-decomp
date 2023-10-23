# pyracer-decomp

An automated decompilation of North Korea's finest (and only) gaming export.

![screenshot](https://user-images.githubusercontent.com/36395320/117536406-2c24c400-b03e-11eb-8c3b-842d21eba56f.jpg)

## Notes

- The main file, pyracer.swf, is a simple swf file that contains the game's base scripts and opening/closing assets.
- symbol.dat is a compressed swf file that appears to contain the in-game sprites, scripts and fonts.
- sound.dat is another compressed swf file with the bulk of the sound effects/music. The opening menu music however is in pyracer.swf. 
<br></br>
- 1.dat and common.dat presumably contain the 3D models/textures, however they aren't stored in any obvious way. If you have any details on the format, please let me know.