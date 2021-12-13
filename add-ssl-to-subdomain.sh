#!/bin/bash
echo ""
echo ""
echo "		*************************************************"
echo "		***************  CARGANDO SSL.    ***************"
echo "		*************************************************"
echo ""
echo ""

i=1
	while [[ $i -lt 42 ]] ; do

		echo "		Eliminando silan de: astrax-decibeles-$i"
		echo "		*************************************************"
		
		docker exec -it astrax-decibeles-$i dpkg -r --ignore-depends=airtime silan

		docker exec -it astrax-decibeles-$i cp /etc/airtime/airtime.conf.back /etc/airtime/airtime.conf


		sleep 1

		(( i += 1 ))
	done

echo ""
echo ""
echo "		*************************************************"
echo "		******              SSL GENERADOS          ******"
echo "		*************************************************"
echo ""
echo ""


plesk bin extension --exec letsencrypt cli.php -d example.com -d webmail.example.com -m jdoe@example.com