#!/bin/bash

cp ~/.config/waybar/template.css ./tmp 

$1 tmp

mv tmp ~/.config/waybar/style.css

systemctl --user restart waybar.service

cp ~/.config/mako/template ./tmp 

$1 tmp

mv tmp ~/.config/mako/config

systemctl --user restart mako.service

cp ~/.config/fuzzel/template.ini ./tmp 

$1 tmp

mv tmp ~/.config/fuzzel/fuzzel.ini

cp ~/.config/swaylock/template ./tmp 

$1 tmp

mv tmp ~/.config/swaylock/config

