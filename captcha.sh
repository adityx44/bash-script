#!/bin/bash

gen_captcha(){
CAPTCHA=$(head /dev/urandom |tr -dc A-Za-z0-9 | head -c 6)
echo $CAPTCHA
}

CAPTCHA=$(gen_captcha)
echo "CAPTCHA : $CAPTCHA"

read -p "Please enter the captcha : " u_input

if [ "$u_input" == "$CAPTCHA" ]; then
        echo "CAPTCHA verification successful!"
else
        echo "CAPTCHA verification failed . Please try again."
fi
