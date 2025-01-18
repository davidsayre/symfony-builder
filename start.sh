#!/bin/bash
if [ ! -d ./app ]; then 
  mkdir -p /app;
fi
docker build -t symfony-cli . ;
docker run -it -v ./app:/app symfony-cli /bin/bash ;
