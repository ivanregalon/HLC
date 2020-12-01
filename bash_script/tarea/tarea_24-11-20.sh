#!/bin/bash
#Titulo: tarea
#Descripcion: Tipo Parámetro 
#Fecha: 24-11-20
#Creador: Iván Regalón Hernández

clear
if [[ "$#" -lt 1 ]]
then
	echo "No ha introducido un nombre valido"
	exit 1
elif [[ -d $1 ]]
then
	echo "$1 es un directorio"
elif [[ -f $1 ]]
then
	echo "$1 es un fichero"
else
	echo "$1 no existe en el directorio actual"
fi
