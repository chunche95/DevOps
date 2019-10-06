#!/bin/sh

git add README.md &&
git commit -m "Introducción a ANSIBLE" &&
git push origin master &&
git add . &&
git add images/. &&
git commit -m "Imagenes" &&
git push origin master &&
git commit -m "Recursos ansible" &&
git push origin master &&
git add subida.sh &&
git commit -m "Script de subida de archivos" &&
git sube
sleep 2
echo "Trabajo terminado"
