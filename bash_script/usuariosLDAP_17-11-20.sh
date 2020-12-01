#!/bin/bash
#Titulo: usuariosLDAP
#Descripcion: 
#Fecha: 17-11-20
#Creador: Iván Regalón Hernández


grep "x:[1-9][0-9][0-9][0-9]" /etc/passwd | (while read TARGET_USER
do
	echo $TARGET_USER
	USER_ID="$(echo "$TARGET_USER" | cut -d':' -f1)"
	
	
	USERNAME="$(echo "$TARGET_USER" | cut -d':' -f5 | cut -d',' -f1)"
	[ ! "$USERNAME" ] && USERNAME="$USER_ID"
	echo USER_ID=$USER_ID
	echo USERNAME=$USERNAME
	LDAP_SN="$(echo "$USERNAME")"
done
)
