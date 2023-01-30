#!/bin/bash
set -eux
sudo rsync -vPr ./build/ /usr/share/games/fortunes/
