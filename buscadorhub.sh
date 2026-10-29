#!/bin/bash

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
	echo "Uso: $0 palabra [ruta]"
	exit 1
fi

palabra="$1"

if [ "$#" -eq 2 ]; then
	ruta="$2"

if [ ! -d "$ruta" ]; then
		echo "Error: la carpeta no existe."
exit 1
	fi
else
ruta="/"
fi

echo "Buscando '$palabra' en '$ruta'..."

grep -rIl \
	--binary-files=without-match \
	--exclude-dir=proc \
	--exclude-dir=sys \
	--exclude-dir=dev \
	--exclude-dir=run \
	-- "$palabra" "$ruta" 2>/dev/null
