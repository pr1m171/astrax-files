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

s1_enable='true'
s1_output='icecast'
s1_port='8000'
s1_channels='stereo'
s1_type='mp3'
s1_bitrate='192'
s1_host='198.199.120.166'
s1_user='source'
s1_pass='passwd123'
s1_admin_user='primiti'
s1_admin_pass='passwd123'
s1_name=''
s1_description=''
s1_url='https://stream.astrax.app/'
s1_genre='musicalization'
s1_mount=''
s1_liquidsoap_error='OK'
off_air_meta='Astrax - offline'


i=1
	while [[ $i -lt 41 ]] ; do

		echo "		*************************************************"
		echo "		*  Seteando https://decibeles-$i.astrax.app/    *"
		echo "		*************************************************"
		
		let position=$i-1


		echo "      -------------------------------------------------"
		echo "		+	Eliminando SILAN de astrax-decibeles-$i     +"
		echo "      -------------------------------------------------"
		docker exec -it astrax-decibeles-$i dpkg -r --ignore-depends=airtime silan

		#echo "      -------------------------------------------------"
		#echo "${clientes[$position]}"
		#echo "      -------------------------------------------------"
		#echo "${montaje[$position]}"
		#echo "      -------------------------------------------------"

		##### Si llega a ser necesario esta config, luego la cargamos!
		docker exec -it astrax-decibeles-$i cp /etc/airtime/airtime.conf.back /etc/airtime/airtime.conf


		echo "      -------------------------------------------------"
		echo "		+  Configurando valores en astrax-decibeles-$i  +"
		echo "      -------------------------------------------------"

		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_enable' WHERE keyname = 's1_enable'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_output' WHERE keyname = 's1_output'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_port' WHERE keyname = 's1_port'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_channels' WHERE keyname = 's1_channels'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_type' WHERE keyname = 's1_type'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_bitrate' WHERE keyname = 's1_bitrate'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_host' WHERE keyname = 's1_host'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_user' WHERE keyname = 's1_user'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_pass' WHERE keyname = 's1_pass'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_admin_user' WHERE keyname = 's1_admin_user'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_admin_pass' WHERE keyname = 's1_admin_pass'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='${clientes[$position]}' WHERE keyname = 's1_name'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='${clientes[$position]}' WHERE keyname = 's1_description'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_url${montaje[$position]}' WHERE keyname = 's1_url'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_genre' WHERE keyname = 's1_genre'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='${montaje[$position]}' WHERE keyname = 's1_mount'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$s1_liquidsoap_error' WHERE keyname = 's1_liquidsoap_error'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_stream_setting SET value='$off_air_meta' WHERE keyname = 'off_air_meta'"

		echo "      -----------------------------------------------------"
		echo "		+  Cargando punto de montaje en astrax-decibeles-$i +"
		echo "      -----------------------------------------------------"

		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "INSERT INTO cc_mount_name VALUES (1, '${montaje[$position]}')"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_mount_name SET mount_name='${montaje[$position]}' WHERE id = 1"

		echo "      ------------------------------------------------------"
		echo "		+  Cargando direcotorio media en astrax-decibeles-$i +"
		echo "      ------------------------------------------------------"

		docker exec -it astrax-decibeles-1 sudo -u postgres psql airtime -c "INSERT INTO cc_music_dirs (directory, type) VALUES ('/home/airtime/music', 'watched')"

		echo "      -------------------------------------------------"
		echo "		+  Cargando preferencias en astrax-decibeles-$i +"
		echo "      -------------------------------------------------"

		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_pref SET valstr='1.000' WHERE keystr = 'default_transition_fade'"

		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_pref SET valstr='America/Bogota' WHERE keystr = 'timezone'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_pref SET valstr='America/Bogota' WHERE keystr = 'user_timezone'"
		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_pref SET valstr='${clientes[$position]} powered by Astrax' WHERE keystr = 'station_name'"
		

		echo "      -------------------------------------------------"
		echo "		+   Habilitando API REST en astrax-decibeles-$i +"
		echo "      -------------------------------------------------"

		docker exec -it astrax-decibeles-$i sudo -u postgres psql airtime -c "UPDATE cc_pref SET valstr='1' WHERE keystr = 'third_party_api'"

		





		echo "      -------------------------------------------------"
		echo "      -------------------------------------------------"
		echo "      -------------------------------------------------"




		

		(( i += 1 ))
	done


echo ""
echo ""
echo "		*************************************************"
echo "		***************  FIN SETEO RADIOS  **************"
echo "		*************************************************"
echo ""
echo ""


echo ""
echo ""
echo "		***************************************************"
echo "		***************  REINICIANDO RADIOS  **************"
echo "		***************************************************"
echo ""
echo ""

i=1
	while [[ $i -lt 42 ]] ; do

		echo "		Reiniciando astrax-decibeles-$i ...."
		echo "		*************************************************"
		
		docker restart astrax-decibeles-$i

		
		(( i += 1 ))
	done

echo ""
echo ""
echo "		***************************************************"
echo "		*****************  TODO REINICIADO  ***************"
echo "		***************************************************"
echo ""
echo ""