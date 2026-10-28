

find "$CARPETA" -type f 2>/dev/null | while read -r ARCHIVO; do

	if grep -q "home" "$ARCHIVO" 2>/dev/null; then
		echo "Archivo encontrado en: $ARCHIVO"
	fi

done

echo "-------------------------"
echo "Búsqueda finalizada"
