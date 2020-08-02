#!/bin/bash

echo "Crear Usuario..."
echo -n "Ingrese el usuario para ser dado de alta: "
read usuario
echo -n "¿Quiere agregarlo a algun grupo?: (si/no) "
read sino
if test "$sino" = "si"
then
	echo -n "Ingrese el nombre del grupo:"
	read grupo
	sudo useradd -m -g "$grupo" -s /bin/false "$usuario"
else
	sudo useradd -m  -s /bin/false "$usuario"
fi
echo "INTRODUZCA LA NUEVA CONTRASEÑA:"
sudo passwd "$usuario"
echo "USUARIO CREADO"
cat /etc/passwd | grep $usuario
