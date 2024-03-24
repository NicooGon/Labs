memoriaDiscoMB=$(df -h | awk 'NR==2 {print int($4 * 1024)}') #Variable que se le asigna la memoria disponible en MB (debido a que en GB no funciona)

umbral=3000 #Variable que se le asigna el umbral

if [ "$memoriaDiscoMB" -lt "$umbral" ]; then #Condicion para verificar que el espacio de la memoria es menor al umbral
    echo "El espacio del disco es menor al umbral" >> "C:\Users\nicol\OneDrive\Documentos\SistemasOperativos\Monitoreo\Registro.log" #Devuelve un mensaje y lo envia a la ruta seleccionada
else
    echo "Aun queda bastante espacio disponible" >> "C:\Users\nicol\OneDrive\Documentos\SistemasOperativos\Monitoreo\Registro.log" #Devuelve un mensaje y lo envia a la ruta seleccionada
fi

#No utilice cron debido a que utilizo windows, por lo tanto utilice el programador de tareas para utilizar el script de forma periodica.