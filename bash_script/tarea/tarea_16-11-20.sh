#!/bin/bash
#Titulo: tarea
#Descripcion: 
#Fecha: 16-11-20
#Creador: Iván Regalón Hernández

clear
usuario=$1
if [[ $# -ne 1 ]]
then
	echo "La variable está vacía"
	echo "Uso: existe_usuario_27-10-20.sh nombreusuario"
	
elif (grep $usuario /etc/passwd)
then
	echo "El usuario" $usuario "existe."
else
	echo "El usuario " $usuario " no existe."
fi
