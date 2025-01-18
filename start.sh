#!/bin/bash
if [ ! -d ./app ]; then 
  mkdir -p /app;
fi
docker build -t symfony-builder . ;
docker run -it -v ./app:/app symfony-builder /bin/bash ;
