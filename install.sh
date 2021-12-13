#!/bin/bash
echo ""
echo ""
echo "		*************************************************"
echo "		*************** COMIENZA LA CARGA ***************"
echo "		*************************************************"
echo ""
echo ""

i=1
	while [[ $i -lt 10 ]] ; do

		echo "		Creando imagen astrax-decibeles-$i"
		echo "		*************************************************"
		
		docker run --name astrax-decibeles-$i -d -p 880$i:80 -p 810$i:8000 -p 820$i:8001 -v /var/www/vhosts/astrax.app/theme.astrax.app/astrax:/usr/share/airtime -v /var/www/vhosts/astrax.app/storage.astrax.app/files:/srv/airtime/stor/ nemosupinfo/airtime
		#plesk bin subdomain --create decibeles-$i -domain astrax.app -www-root /decibeles-$i-astrax.app

		sleep 1

		(( i += 1 ))
	done

i=10
	while [[ $i -lt 42 ]] ; do

		echo "		Creando imagen astrax-decibeles-$i"
		echo "		*************************************************"
		
		docker run --name astrax-decibeles-$i -d -p 88$i:80 -p 81$i:8000 -p 82$i:8001 -v /var/www/vhosts/astrax.app/theme.astrax.app/astrax:/usr/share/airtime -v /var/www/vhosts/astrax.app/storage.astrax.app/files:/srv/airtime/stor/ nemosupinfo/airtime
		#plesk bin subdomain --create decibeles-$i -domain astrax.app -www-root /decibeles-$i-astrax.app

		sleep 1

		(( i += 1 ))
	done

echo ""
echo ""
echo "		*************************************************"
echo "		******* CARGA DE CONTENEDORES FINALIZADA ********"
echo "		*************************************************"
echo ""
echo ""