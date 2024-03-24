Renombrar="C:\Users\nicol\OneDrive\Documentos\SistemasOperativos\Renombre" #Asignar carpeta a variable
patron="*.txt" #Patron de archivos a reenombrar

echo "Ingresa el nombre deseado" #Mensaje a mostrar, el usuario debe ingresar un nombre.
read nombre 

for archivo in "$Renombrar"/$patron; do #Recorre los archivos que contienen .txt
    nuevo_nombre="${archivo%.*}_$nombre.txt" #Nuevo nombre del archivo
    mv "$archivo" "$nuevo_nombre" #Reenombra el archivo
    echo "El archivo ha sido renombrado correctamente."
done



