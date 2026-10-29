
find "$ruta" -type f \
    ! -path "/proc/*" \
    ! -path "/sys/*" \
    ! -path "/dev/*" \
    ! -path "/run/*" 2>/dev/null | while read -r ARCHIVO; do

	if grep -q --binary-files=without-match -- "$palabra" "$ARCHIVO" 2>/dev/null; then
        echo "Ubicación: $ARCHIVO"
    fi


done
echo "----------------------------------------"
echo "Búsqueda finalizada."
