#!/bin/bash

sudo fusermount -zu /opt/music
sudo fusermount -zu /opt/game

mountpoint /opt/music
mountpoint /opt/game
