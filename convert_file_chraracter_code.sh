for file in `find $1 -type f`; do
    if [ -f ${file} ]; then
        iconv -c -f utf8 -t cp932 -o "$file.new" "$file"
        mv -f "$file.new" "$file"
    fi
done
