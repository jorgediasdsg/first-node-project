#!/bin/bash
#
#   My First app nodejs
#
#   File Settings
#
#

#   Start yarn
yarn init -y
#   Install Express
yarn add express
#   Install Tyoescript
yarn add typescript -D
yarn tsc --init #cria arquivo tsconfig.json
#   Create source
mkdir src
echo "node_modules" > .gitignore
#   Config tsconfig
sed -i 's/\/\/ "rootDir": ".\/",/"rootDir": ".\/src",/g' tsconfig.json
sed -i 's/\/\/ "outDir": ".\/",/"outDir": ".\/dist",/g' tsconfig.json
#   Convert code typescript -> javascript
yarn tsc
yarn add @types/express -D
#   White server.ts
echo "" > src/server.ts
#   Set Script
sed -i 's/"license": "MIT",/"license": "MIT","scripts":{"build":"tsc", "dev:server":"ts-node-dev --transpileOnly --ignore-watch node_modules src\/server.ts"},/g' package.json

yarn tsc

yarn add ts-node-dev -D

yarn dev:server
