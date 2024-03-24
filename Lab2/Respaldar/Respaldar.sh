origen="C:\Users\nicol\OneDrive\Documentos\SistemasOperativos\Origen" #Asignar carpeta a variable
respaldo="C:\Users\nicol\OneDrive\Documentos\SistemasOperativos\Respaldo" 

mkdir -p respaldo #Crear carpeta respaldo por si no existe
cp -r origen respaldo #Copiar carpeta origen en la carpeta de destino
echo "La copia ha sido realizada correctamente." #Mensaje a mostrar en la consola

#Manera sencilla de hacer en powershell:

#$origen="C:\Users\nicol\OneDrive\Documentos\SistemasOperativos\Origen" 
#$respaldo="C:\Users\nicol\OneDrive\Documentos\SistemasOperativos\Respaldo"

#robocopy $origen $respaldo /mir