#!/bin/bash
#Titulo: tarea
#Descripcion: Otorgar permisos de ejecución a archivo o directorio
#Fecha: 12-11-20
#Creador: Iván Regalón Hernández


clear
ls -l
echo "Introduzca el fichero al que quiere dar permisos de ejecución"
read opcion

archivo=$opcion

if [ "$#" -lt 2 ]
then
	if [ ! -f "$archivo" ]
	then
		echo "El fichero introducido no es válido..."
	else
		chmod +x $archivo
	fi
fi




