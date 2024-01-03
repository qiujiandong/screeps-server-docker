#!/bin/bash

init_server() {
    yarn init -y
    yarn add screeps screepsmod-auth screepsmod-mongo
    echo $STEAM_API_KEY | npx screeps init
    sed -i '53s/false/true/' .screepsrc
    sed -i '3s/$/    "node_modules\/screepsmod-auth\/index.js"/' mods.json
    sed -i '3i\    "node_modules\/screepsmod-mongo\/index.js",' mods.json
}

case "$1" in
    init)
        echo "try to init server......"
        init_server
    ;;
    start)
        if [ ! -f ".screepsrc" ]; then
            echo "try to init server......"
            init_server
        fi
        echo "server starting......"
        npx screeps start
    ;;
    *)
        exec "$@"
    ;;
esac