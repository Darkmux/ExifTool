#!/bin/bash
#
# REQUISITOS
#
# VARIABLES
#
PWD=$(pwd)
source $PWD/Colors.sh
#
sleep 0.5
clear
echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}Actualizando Repositorios... ${verde}█
└══════════════════════════════┘
"${blanco}
apt update && apt upgrade -y
sleep 0.5
clear
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Instalando exiftool... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y exiftool > /dev/null 2>&1
clear
chmod 711 ExifTool.sh
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}REQUISITOS INSTALADOS ${verde}█
█ ${blanco}EJECUTE EL COMANDO:   ${verde}█
└═══════════════════════┘
┃
┃    ┌═══════════════┐
└═>>>█ ${blanco}./ExifTool.sh ${verde}█
     └═══════════════┘
"${blanco}
