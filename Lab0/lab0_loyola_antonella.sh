RESPUESTAS LAB 0

#ejercicio 1 ¿Que modelo de procesador tiene tu equipo? 
cat /proc/cpuinfo | grep "model name"

#ejercicio 2 ¿cuantas unidades de ejecucion tiene el procesador?
cat /proc/cpuinfo | grep "model name" | wc -l

#ejercicio 3 
echo -e "\e[32m\nEjercicio 3\e[0m\n"

#ejercicio 4 calcular el dia de max temp y el dia de min temp 
sort -nr -k5 weather_cordoba.in | awk 'NR==1 {print $1, $2, $3}' # date of max max temp
sort -nr -k5 weather_cordoba.in | awk 'END {print $1, $2, $3}'   # date of min max temp

#ejercicio 5 ordenar el listado de jugadores segun la posicion en el ranking 
sort -n -k3 atpplayers.in

#ejercicio 6 ordenar la tabla segun la cant de puntos y desempatar por dif de goles
awk '{print $0, $7 - $8}' superliga.in | sort -k2nr -k9nr 

#ejercicio 7 MAC address de interfaz ethernet 
ip addr | grep -o "ether ..:..:..:..:..:.." 

#ejercicio 8
# create and save ten .srt files in a new folder.
mkdir SERIE_NO_PIRATEADA && touch SERIE_NO_PIRATEADA/miserie_S0E{1..10}_es.srt
# rename the recently created files removing _es suffix.
for file in SERIE_NO_PIRATEADA/*.srt; do mv $file "${file%_es.srt}.srt" ; done 
