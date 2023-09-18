# Installation notes
Some notes on what I had to do to get this stuff installed because I have zero understanding of Lua/VimScript and had to trial by fire: 
  1. Config and binds have to be called in `init.lua` before Lazy so that the map leader key is known.
  2. Lua doesn't use relative file path; everything is based on relation to the lua folder and you use periods to represent a new folder depth.
  3. For colorschemes to work I had to install mingw with `choco install mingw`.

# Future additions
- [ ] File explorer. 
- [ ] UltiSnips with Python interpolation.
- [ ] Fix Telescope fuzzy finding.
- [ ] Relearn binds that are already there. 
