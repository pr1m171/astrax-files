#!/bin/bash
echo ""
echo ""
echo "		*************************************************"
echo "		*************** ELIMINANDO SILAN. ***************"
echo "		***************  ELIMINANDO CONF. ***************"
echo "		*************************************************"
echo ""
echo ""

i=1
	while [[ $i -lt 42 ]] ; do

		echo "		Eliminando silan de: astrax-decibeles-$i"
		echo "		*************************************************"
		
		docker exec -it astrax-decibeles-$i dpkg -r --ignore-depends=airtime silan

		docker exec -it astrax-decibeles-$i cp /etc/airtime/airtime.conf /etc/airtime/airtime.conf.back
		
		docker exec -it astrax-decibeles-$i rm /etc/airtime/airtime.conf		


		sleep 1

		(( i += 1 ))
	done

echo ""
echo ""
echo "		*************************************************"
echo "		****** SILAN Y ARCHIVOS DE CONF ELIMINADOS ******"
echo "		*************************************************"
echo ""
echo ""