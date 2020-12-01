#!/bin/bash
#Titulo: existe_usuario
#Descripcion: 
#Fecha: 27-10-20
#Creador: Iván Regalón Hernández

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



