#!/bin/bash
#Titulo: tarea
#Descripcion: 
#Fecha: 17-11-20
#Creador: Iván Regalón Hernández

if [[ "$#" -ne 1 ]]
then
	echo "Debe ejecutar el script junto con un argumento"
	exit 1
fi


case "$1" in
	0|1|2|3|4) echo "Insuficiente"
	;;
	5) echo "Suficiente"
	;;
	6) echo "Bien"
	;;
	7) echo "Notable"
	;;
	8) echo "Notable"
	;;
	9|10) echo "Sobresaliente"
	;;
esac

