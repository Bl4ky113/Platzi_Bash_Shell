#!/bin/bash

read -p "Ingrese la Nota del Estudiante: " valor_nota

if [ $valor_nota -lt 3 ]; then
    echo "Ha perdido la materia"
else
    echo "Ha pasado la materia"
    read -p "El Estudiante desea seguir en la Institución? (s/n): " respuesta_continuar
    if [ $respuesta_continuar == "s" ]; then
        echo "Gracias por continuar en la Institución"
    else
        echo "Gracias por estudiar en la Institución"
    fi
fi
