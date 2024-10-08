#!/bin/bash
read -p "Declare valor MEMORY_VALUE " $MEMORY_VALUE
read -p "Declare valor MEMORY_LIMIT " $MEMORY_LIMIT
read -p "Declare valor JAVA_XMS " $JAVA_XMS
read -p "Declare valor JAVA_XMX " $JAVA_XMX

echo "Valor ingresado "  $MEMORY_VALUE  " MEMORY_VALUE "
echo "Valor ingresado "  $MEMORY_LIMIT  " MEMORY_LIMIT "
echo "Valor ingresado "  $JAVA_XMS  " JAVA_XMS "
echo "Valor ingresado "  $JAVA_XMX  " JAVA_XMX "


echo "Se Procede a Validar valores cargados "

if [[ $MEMORY_VALUE -gt  $MEMORY_LIMIT ]]
then
        echo " Valor Rechazado  " + " Considere que el valor de MEMORY_VALUE " $MEMORY_VALUE " debe ser Inferior o igual que  MEMORY_LIMIT " $MEMORY_LIMIT 
fi

if [[ $MEMORY_VALUE -le  $JAVA_XMX ]]
then
        echo "Valor Rechazado" +  " Considere que el valor de MEMORY_VALUE " $MEMORY_VALUE " debe ser Inferior o igual que  JAVA_XMX " $JAVA_XMX 
fi

if [[ $MEMORY_VALUE -le $MEMORY_LIMIT ]]
then
        echo "Valor Permitido MEMORY_VALUE"
fi 


if [[ $JAVA_XMS -lt $MEMORY_LIMIT ]]
then
        echo "Valor Permitido" + " Considere que el valor de JAVA_XMS " $JAVA_XMS " debe ser Inferior a  MEMORY_LIMIT " $MEMORY_LIMIT
fi

echo "fin"
