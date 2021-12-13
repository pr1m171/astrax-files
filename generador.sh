#!/bin/bash
echo ""
echo ""
echo "		*************************************************"
echo "		***************  SETEANDO RADIOS  ***************"
echo "		*************************************************"
echo ""
echo ""


#myarr=('hello big world!' 'how are you' 'where am I')
#echo "${myarr[$i]}"

clientes=('PUB MADRID - PASTO' 'GASTRO BAR NUGGET STREET -  PASTO' 'LIQUOR STORE - IBAGUE' 'ÑAPANGUITA BAR-PASTO' 'LA POSADA DEL ARRIERO - VILLAVICENCIO' 'BAR LA CASITA AZUL - PASTO' 'CAFE DEL ´PARQUE - PASTO' 'BAR CAFÉ SAFARY - PASTO' 'CAFE DEL PARQUE - PASTO' 'BAR BAGATA - BOGOTA' 'BAR DISCOTECA EL KING - PASTO' 'BAR DONDE ESTRADA - BOGOTA' 'BAR EL CAFETAL - BOGOTA' 'BAR LAS CHELAS BEER VIP - VILLAVICENCIO' 'BAR MARGRITA PINTA - PASTO' 'BAR SOLAR - CARTAGENA' 'BILLARES EL ESTADERO COMERCIAL - BARRANQUILLA' 'CAFE TERRAZA BAR-MONTERIA' 'CAPORO - MONTERIA' 'CLUB BAR MURIILO - BARRANQUILLA' 'PALMA RESTAURANTE - CUCUTA' 'ABSALON MUSIC RESTAURANTE - PASTO' 'DELIRIUM GASTRO BAR - CARTAGENA' 'DISCO BAR FULL SECRET - NEIVA' 'DYNASTY BAR - BOGOTA' 'EL MEJOR SITIO - CARTAGENA' 'FRESA SALVAJE - BARRANQUILLA' 'GUATILA BAR - CARTAGENA' 'LA CANTINA DE LA PLAZA - MANIZALEZ' 'THE GOOD PLACE CAFE BAR - MANIZALES' 'TERRAZA EL CASTILLO - CARTAGENA' 'TE VAS Y VUELVES - MONTERIA' 'TABU RESTAURANTE BAR - BOGOTA' 'RESTAURANTE TERRAZA CHARRY - CARTAGENA' 'RESTAURANTE PUNTO TROPICAL - CARTAGENA' 'RESTAURANTE KAPIYAL SHOST - MANIZALES' 'PUNTO TROPICAL - CARTGENA' 'PLEY CLUB - BARRAQUILLA' 'MI RANCHITO - CARTAGENA' 'LOS GRAMMY VALLENATOS - CARTAGENA' 'BILLARES Y ESTADEROS - CARTAGENA')
montaje=('Madridpubpasto' 'Gastrobarnuggetstreetpasto' 'Liquorstore' 'Ñapamguitabar' 'Laposadadelarriero' 'Barlacasitazul' 'Cafedelparquepasto' 'Safarycafebarpasto' 'Cafedelparquepasto' 'Bagata' 'Bardiscotecathekingdepasto' 'Videobardondestrada' 'Elcafetal' 'Chelasbeervip' 'Barmargaritapinta' 'barsolar' 'Estaderocomercial' 'Cafeterrazabar' 'Caporo' 'Clubbarmurrillo' 'Palmarrestaurante' 'Absalonmusicrestaurantpasto' 'Deliriumgastrobar' 'Discobarfullsecret' 'Dynastybar' 'elmejorsitio' 'Fresasalvaje' 'Guatila' 'Lacantinadelaplaza' 'lthegoodplacebar' 'terrazaelcastillo' 'Tevasyvuelves' 'Taburestaurantebar' 'terrazacharry' 'puntotropical' 'kapitalshots' 'puntotropical' 'Pleyclub' 'Mirachito' 'Losgrammyvallenato' 'Billaresyestaderos')

i=1
	while [[ $i -lt 42 ]] ; do
	

		let position=$i-1

		echo "UPDATE stream SET url_login = 'https://decibeles-$i.astrax.app/login' WHERE id=$i;"


		(( i += 1 ))
	done