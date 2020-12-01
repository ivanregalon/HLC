#!/bin/bash
#Titulo: tarea
#Descripcion: 
#Fecha: 11-11-20
#Creador: Iván Regalón Hernández

echo "Introduzca su año de nacimiento yyyy"
read y

if [[ ${#y} != 4 ]]
then
	echo "Formato equivocado, introduca una fecha con 4 diditos"
	read y
fi

echo "Introduzca mes nacimiento mm"
read m

if [[ ${#m} != 2 ]]
then
	echo "Formato equivocado, introduca una fecha con 2 diditos"
	read m
fi

echo "Introduzca dia de nacimiento dd"
read d

if [[ ${#d} != 2 ]]
then
	echo "Formato equivocado, introduca una fecha con 2 diditos"
	read d
fi

year=`date +%Y`
mes=`date +%m`
dia=`date +%d`
edad=`expr $year - $y`



if [[ $mes < $m ]]
then
	edad=`expr $edad - 1`
fi

if [[ $dia < $d && $mes = $m ]]
then
	edad=`expr $edad - 1`
fi

echo "Su edad es " $edad








