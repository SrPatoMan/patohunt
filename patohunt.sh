#!/bin/bash

## COLORES ##
BLACK='\033[0;30m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'


RESET_COLOR='\033[0m'

## SCRIPT ##

echo -e "$GREEN"
echo -e "[*] TIPO DE AUDITORIA?: Web [1] Mobil [2] $RESET_COLOR\n"
read auditoria
echo -e "\n"

echo -e "$GREEN"
echo -e "[*] NOMBRE DEL TARGET $RESET_COLOR\n"
read organizacion

echo -e "$BLUE"
echo -e "[*] CREANDO LA ESTRUCTURA DE DIRECTORIOS"
echo -e "$RESET_COLOR"
sleep 1


if [ auditoria == 1 ];then
mkdir $organizacion
mkdir -p $organizacion/subdominios
mkdir -p $organizacion/fuzzing
mkdir -p $organizacion/subdominios/subs_tochos
mkdir -p $organizacion/subdominios/tecnologias
mkdir -p $organizacion/endpoints
fi
