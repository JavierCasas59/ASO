#!/bin/bash


if [ $# -lt 4 ]; then
    echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi


opcion=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=$5


user="alu$(echo $apellido1 | cut -c1-2)$(echo $apellido2 | cut -c1-2)$(echo $nombre | cut -c1)"


if [ "$opcion" == "alta" ]; then

    if [ -z "$grupo" ]; then
        grupo=$user
        groupadd $grupo
    fi

    useradd -m -g $grupo -s /bin/bash $user_id
    echo "Usuario $user creado y añadido al grupo $grupo."


elif [ "$opcion" == "baja" ]; then

    userdel -r $user
    echo "Usuario $user eliminado."


else
    echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi
