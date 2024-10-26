#!/bin/bash



# Función para obtener la información de la red
function obtener_info_red() {
    ip_info=$(ip -o -f inet addr show | awk '{print $4}')
    IFS='/' read -r ip mascara <<< "$ip_info"
    
    
    broadcast=$(ip -o -f inet addr show | awk '{print $6}')
    
    
    red=$(ip -o -f inet addr show | awk '{print $2}')

    echo "Nombre de la red: $red"
    echo "Dirección IP: $ip"
    echo "Máscara de subred: $mascara"
    echo "Dirección de broadcast: $broadcast"
}

# Función para escanear las IPs
function escaneo_ips() {
    local red="$1"
    local mascara="$2"
    
    
    IFS='/' read -r base_ip _ <<< "$red"
    IFS='.' read -r i1 i2 i3 _ <<< "$base_ip"
    
    echo "Listado de IPs en la red $base_ip/$mascara:"
    
    
    for i in {1..254}; do
        ip="${i1}.${i2}.${i3}.${i}"
        
        
        if ping -c 1 -W 1 "$ip" &> /dev/null; then
            echo "$ip - Ocupada"
        else
            echo "$ip - Libre"
        fi
    done
}

# Función principal
function generar_informe() {
    obtener_info_red
    
    cidr=$(ip -o -f inet addr show | awk '{print $4}' | grep -o '/[0-9]*')
    
    escaneo_ips "$ip_info" "$cidr"
}


generar_informe

