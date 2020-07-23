# batchdwebp.sh

A really simple shell script that runs `dwebp` on every WebP image in the current directory and converts them to PNG.  
If an input file turns out to be a JPEG, PNG, or GIF with a `.webp` extension, batchdwebp.sh will simply rename it.

### Motivation
Mac doesn't have WebP support, and manually specifying an output file for every `dwebp` use was really tedious.

Fandom, the wiki company, apparently stores its images in whatever input format they are uploaded with, but the extension is changed to `.webp`. Programs that only check the extension to determine file type may get tripped up by these files. batchdwebp.sh will correct this by giving such images the correct extension for their format.

### Dependencies
[libwebp](https://developers.google.com/speed/webp/docs/precompiled), for the `dwebp` utility.

### Usage
Move this file to a directory with a bunch of WebP images in it, navigate to that directory, then run
`./batchdwebp.sh`
