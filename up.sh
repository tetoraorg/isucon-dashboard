#!/bin/sh

ROOT=$PWD

echo "Starting server..."
cd $PWD/server
docker compose up --build -d
echo "Finished!"

echo "Starting client..."
cd $PWD/client
docker compose up --build -d
echo "Finished!"
