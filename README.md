# Diablo 2 Hero Extractor

This library extracts the character info from a diablo 2 save game.
Currently only 1.09 save files are supported. The library permits to
extract the Character Name, class, level and attributes (str, dex, vit,
energy).

This work was based on [pellegrino's SC2Refinery](https://github.com/pellegrino/s7-e3), where I discovered the bindata library and learn a new way to use rSpec! :)

## About the format

I'm follow the Trevin Beattie's specification, [found here](http://www.ladderhall.com/ericjwin/109/trevin/trevinfileformat.html).

## Usage

    hero = D2Hero.load("/path/to/file.d2s")
    hero.name   # => Kurskzakk
    hero.class  # => :barbarian
    hero.level  # => 99

## Caveats

I'm relying on [these character files](http://www.ladderhall.com/ericjwin/109/index.html), since I don't have the 1.09 version on my computer (in fact, 1.09 doens't work on Macs).
