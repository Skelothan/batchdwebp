# batchdwebp.sh

A really simple shell script that runs `dwebp` on every WebP image in the current directory and converts them to PNG. That's it.

### Motivation
Mac doesn't have WebP support, and manually specifying an output file for every `dwebp` use was really tedious.

### Dependencies
[libwebp](https://developers.google.com/speed/webp/docs/precompiled), for the `dwebp` utility.

### Usage
Move this file to a directory with a bunch of WebP images in it, navigate to that directory, then run
`./batchdwebp.sh`
