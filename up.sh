#!/bin/sh

ROOT=$PWD

echo "Starting server..."
cd $ROOT/server
docker compose up --build -d
echo "Finished!"

echo "Starting client..."
cd $ROOT/client
docker compose up --build -d
echo "Finished!"
