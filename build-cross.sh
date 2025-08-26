in simple steps:


#!/bin/bash

# 🚀 Script para build cross-platform do Nebula (Linux + Windows)

set -e

echo "=== Instalando dependências de build (Linux + Windows) ==="
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y wine64 wine32 nsis

echo "=== Instalando Node modules ==="
pnpm install

echo "=== Ajustando permissões do chrome-sandbox do Electron ==="
if [ -f "$(pnpm root -g)/electron/dist/chrome-sandbox" ]; then
    sudo chown root:root "$(pnpm root -g)/electron/dist/chrome-sandbox"
    sudo chmod 4755 "$(pnpm root -g)/electron/dist/chrome-sandbox"
fi

echo "=== Limpando builds antigos ==="
rm -rf dist/

echo "=== Build Linux + Windows ==="
pnpm run dist

echo "=== Build finalizado ==="
echo "Linux AppImage: dist/Nebula-1.0.0.AppImage"
echo "Windows .exe: dist/Nebula Setup 1.0.0.exe"






package.json

{
  "name": "nebula",
  "version": "1.0.0",
  "description": "Nebula - A SoundCloud frontend",
  "main": "main.js",
  "scripts": {
    "start": "electron .",
    "dist": "electron-builder --linux AppImage --win nsis"
  },
  "devDependencies": {
    "electron": "^30.5.1",
    "electron-builder": "^24.13.3"
  },
  "build": {
    "appId": "com.nebula.app",
    "productName": "Nebula",
    "linux": {
      "target": "AppImage",
      "category": "Utility",
      "icon": "build/icons/icon.png"
    },
    "win": {
      "target": "nsis",
      "icon": "build/icons/icon.ico"
    }
  },
  "dependencies": {}
}

3
