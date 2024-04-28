#!/bin/bash

while true; do
    # Obtém as coordenadas X e Y atuais do mouse
    pos=$(xdotool getmouselocation --shell)

    # Extrai as coordenadas X e Y do resultado
    x=$(echo $pos | awk -F "=" '{print $2}' | awk '{print $1}')
    y=$(echo $pos | awk -F "=" '{print $3}' | awk '{print $1}')

    # Mostra as coordenadas do mouse
    echo "Mouse position: X=$x, Y=$y"

    # Aguarda 1 segundo antes de verificar novamente a posição do mouse
    sleep 1
done
