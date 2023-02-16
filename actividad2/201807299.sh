#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset

# ACTIVIDAD 2

# TRAERSE EL CONTENIDO DE LA API
content=$(curl https://api.github.com/users/ange1lop)
# echo $?

# id
id=$(echo "$content" | jq '.id')
# fecha creacion
creacion=$(echo "$content" | jq '.created_at')
# fecha sistema
fecha=$(date +%F)
# CREAR EL DIRECTORIO
if [ -d /tmp/"$fecha" ]
then
    echo "El Directorio Ya Existe"
else
    echo "Creado El Directorio..."
    mkdir /tmp/"$fecha"
fi
# guardar el mensaje en un archivo
echo "Hola $user. User ID: $id. Cuenta Creada El: $creacion" >> /tmp/"$fecha"/usuario.log
#Mostrar el contenido
cat /tmp/"$fecha"/usuario.log




