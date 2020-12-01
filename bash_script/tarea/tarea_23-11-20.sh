#!/bin/bash
#Titulo: tarea_
#Descripcion: Reinicio como Root
#Fecha: 23-11-20
#Creador: Iván Regalón Hernández

if [ "$(id -u)" != "0" ]; then
   echo "Debe ejecutar este script como usuario root"
   exit 1
else
	echo "El equipo se reiniciará en 1 minuto"
	shutdown -r +1
fi

