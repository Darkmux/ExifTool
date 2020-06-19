#!/bin/bash
#
# Created by: Termux Hacking
#
# ExifTool
#
# VARIABLES
#
PWD=$(pwd)
source $PWD/Colors.sh
#
# FUNCIONES
#
function ExifTool {
	sleep 0.5
	clear
echo -e "${verde}
▗▄▄▄▖       █    ▄▄ ▗▄▄▄▖          ▗▄▖
▐▛▀▀▘       ▀   ▐▛▀ ▝▀█▀▘          ▝▜▌
▐▌   ▝█ █▘ ██  ▐███   █   ▟█▙  ▟█▙  ▐▌
▐███  ▐█▌   █   ▐▌    █  ▐▛ ▜▌▐▛ ▜▌ ▐▌
▐▌    ▗█▖   █   ▐▌    █  ▐▌ ▐▌▐▌ ▐▌ ▐▌
▐▙▄▄▖ ▟▀▙ ▗▄█▄▖ ▐▌    █  ▝█▄█▘▝█▄█▘ ▐▙▄
▝▀▀▀▘▝▀ ▀▘▝▀▀▀▘ ▝▘    ▀   ▝▀▘  ▝▀▘   ▀▀
"${blanco}
}
function Menu_ExifTool {
echo -e -n "${verde}
┌════════════════════════════════════════┐
█ ${blanco}INGRESE LA RUTA Y NOMBRE DE SU ARCHIVO ${verde}█
└════════════════════════════════════════┘
┃    ┌══════════════════════════════════════┐
└═>>>█ EJEMPLO => ${blanco}/sdcard/Download/foto.jpg ${verde}█
┃    └══════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r ruta
echo -e "${verde}
┌═══════════════════════════┐
█ ${blanco}OBTENIENDO INFORMACIÓN... ${verde}█
└═══════════════════════════┘
"${blanco}
sleep 2
exiftool ${ruta}
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}INFORMACIÓN OBTENIDA ${verde}█
└══════════════════════┘
"${blanco}
}
ExifTool
Menu_ExifTool
