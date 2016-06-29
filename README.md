# About

This program prints 1083 by 336 pixel monochrome PNG files on Brother QL-570 thermal sticker printers by writing to the Linux device file (e.g. /dev/usb/lp0).

It expects the printer to be loadeded with continous 29 mm wide sticker paper or continuous 62 mm wide sticker paper. but also tested with model QL-700 and DK 29mm x 90.3mm non-continuous sample labels.

# Prerequisites

You need libpng and the libpng header files in order to compile. To install the required packages on a Debiab-based system:

```
sudo aptitude install build-essential libpng12-0 libpng12-dev pkg-config
```

# Compiling

Simply run:

```
make
```

# Usage 

```
Usage: ./ql_print printer n|w|7 pngfile [cutoff]
  Where 'n' is narrow paper (29 mm) and 'w' is wide paper (62 mm) and '7'
  is the 1.1\" x 3.5\" sample labels that ship with the QL-700.\n")
  [cutoff] is the optional color/greyscale to monochrome conversion cutoff (default: 180).
  Example: ./ql_print /dev/usb/lp0 n image.png
  Hint: If the printer's status LED blinks red, then your media type is probably wrong.
```

If you try to print a greyscale PNG, then it will be converted to monochrome before printing. The image is converted by turning all pixels that have a value of less than 180 out of 255 in either color channel to black, and the rest to white. The cutoff can be adjusted to something other than 180 by specifying it on the command line.

# Credit

Asbjørn Sloth Tønnesen reverse-engineered the QL-570 protocol and wrote all the important parts of this program. Originally this was developed for the [labitat hacker space](https://labitat.dk/)


# License and copyright

License: GPLv3

* Copyright 2012 Asbjørn Sloth Tønnesen
* Copyright 2014 [Marc Juul](https://github.com/juul)
* Copyright 2014 [Kurt Heston](https://github.com/kheston)
* Copyright 2016 [BioBricks Foundation](https://biobricks.org)
