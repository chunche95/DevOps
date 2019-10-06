#!/bin/sh

git add README.md &&
git commit -m "Introducción a ANSIBLE" &&
git push origin master &&
git add . &&
git commit -m "Recursos ansible" &&
git push origin master
sleep 2
echo "Trabajo terminado"
