#!/bin/bash
#Titulo: tarea
#Descripcion: Adivinar un número
#Fecha: 13-11-20
#Creador: Iván Regalón Hernández

clear
echo "Introduce un número"
read numero

maximo=$numero
min=0
intentos=0
aleatorio=$(($RANDOM%maximo+min))

while [ $numero -ne $aleatorio ]
do
	let intentos=intentos+1
	echo "Introduce un número entre 0 y $maximo"
	read numero
	if [ $numero -eq $aleatorio ]
	then
		echo "Enhorabuena, el número es correcto"
		echo "Has realizado $intentos intentos"
		exit 0
	fi
	echo "El numero es incorrecto..."
done
