#!/bin/bash
read -p "Declare valor MEMORY_VALUE " MEMORY_VALUE
read -p "Declare valor MEMORY_LIMIT " MEMORY_LIMIT
#read -p "Declare valor JAVA_XMS " $JAVA_XMS
#read -p "Declare valor JAVA_XMX " $JAVA_XMX
#read -p "Declare valor CPU_REQUEST " $CPU_REQUEST
#read -p "Declare valor CPU_LIMIT " $CPU_LIMIT
#read -p "Declare valor REPLICAS_MINIMAS " $REPLICAS_MINIMAS
#read -p "Declare valor REPLICAS_MAXIMAS " $REPLICAS_MAXIMAS
#read -p "Declare valor ENTORNO (DEV = 1, CERT=2, PROD=3)" $ENTORNO

TOLERANCIA=30


echo "Valor ingresado "  $MEMORY_VALUE  " MEMORY_VALUE "
echo "Valor ingresado "  $MEMORY_LIMIT  " MEMORY_LIMIT "
echo "Valor ingresado "  $JAVA_XMS  " JAVA_XMS "
echo "Valor ingresado "  $JAVA_XMX  " JAVA_XMX "
#echo "Valor ingresado "  $CPU_REQUEST  " CPU_REQUEST "
#echo "Valor ingresado "  $CPU_LIMIT  " CPU_LIMIT "
#echo "Valor ingresado "  $REPLICAS_MINIMAS  " REPLICAS_MINIMAS "
#echo "Valor ingresado "  $REPLICAS_MAXIMAS  " REPLICAS_MAXIMAS "
#echo "Valor ingresado "  $ENTORNO  " ENTORNO "

echo "Se Procede a Validar valores cargados "
#PORCENTAJE=$(echo "scale=; ($MEMORY_VALUE / $MEMORY_LIMIT)*100" | bc)
PORCENTAJE=$(echo "scale=2; ($MEMORY_VALUE / $MEMORY_LIMIT)*100" | bc)
PORCENTAJE=$( printf "%.0f" $PORCENTAJE )

if [ $MEMORY_VALUE -le  $MEMORY_LIMIT ] && [ $PORCENTAJE -le $TOLERANCIA ] ; then
        
	echo " Valor APROBADO  " 
else 
        echo " Valor RECHAZADO  Considere usar un margen del 30% entre esos valores"
        exit 1;
fi
echo "FIN
