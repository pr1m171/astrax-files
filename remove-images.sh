#!/bin/bash
echo ""
echo ""
echo "		*************************************************"
echo "		*************** ELIMINANDO IMG's. ***************"
echo "		*************************************************"
echo ""
echo ""

i=1
	while [[ $i -lt 42 ]] ; do

		echo "		Eliminando astrax-decibeles-$i ...."
		echo "		*************************************************"
		
		docker stop astrax-decibeles-$i
		sleep 1
		docker rm astrax-decibeles-$i

		
		(( i += 1 ))
	done

echo ""
echo ""
echo "		*************************************************"
echo "		******************  ELIMINADOS  *****************"
echo "		*************************************************"
echo ""
echo ""