#!/usr/bin/env bash

file=$1

convert -resize 8x8 ${file}.png arrow_8.png
convert -resize 16x16 ${file}.png arrow_16.png
convert -resize 32x32 ${file}.png arrow_32.png
convert -resize 64x64 ${file}.png arrow_64.png
convert -resize 96x96 ${file}.png arrow_96.png
convert -resize 128x128 ${file}.png arrow_128.png
convert -resize 256x256 ${file}.png arrow_256.png
