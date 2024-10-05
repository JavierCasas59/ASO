
#!/bin/bash

file="listado_etc.txt"

ls -a /etc/ > "$file"

cat "$file"
