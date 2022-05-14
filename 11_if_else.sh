#!/bin/bash

read -p "Ingrese la Nota del Estudiante: " valor_nota

if ((valor_nota < 3)); then
    echo "Ha perdido la nota"
else
    echo "Ha pasado la nota"
fi

read -p "Ingrese su edad: " valor_edad
if [ $valor_edad -gt 18 ]; then
    echo "Usted puede Votar"
else
    echo "Usted No Puede Votar"
fi
