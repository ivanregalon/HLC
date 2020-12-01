#!/bin/bash
#Titulo: multiplicar_for
#Descripcion: 
#Fecha: 03-11-20
#Creador: Iván Regalón Hernández
clear
echo "Escriba un número.."
read numero

echo "La tabla de multiplicar del número $numero..."

for n in {1..10}
do
	echo "$n * $numero =" $(( n * numero )) 
done

