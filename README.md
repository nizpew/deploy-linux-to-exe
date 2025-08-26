
 6936  cd Downloads/Projeto_Software/
 6937  mkdir versao-javascript
 6938  d versao-javascript
 6939  cd versao-javascript
 6940  npm init -y\nnpm install express systeminformation chart.js\n
 6941  vim server.js
 6942  mkdir public/
 6943  vim public/index.html
 6944  node server.js\n
 6945  npm install --save-dev electron\n
 6946  vim package.json
 6947  vim main.js
 6948  npm install --save-dev electron-builder\n
 6949  vim electron-builder.yml
 6950  npm run build:linux\n
 6951  npm install --save-dev electron\n
 6952  vim package.json
 6953  npm run build:linux\n
 6954  npm run build:win\n
 6955  cd Downloads/Projeto_Softwareversao-javascript
 6956  cd Downloads/Projeto_Software/versao-javascript
 6957  wine dist/MonitorHardware\ Setup\ 1.0.0.exe
 6958  cd
 6959  git clone https://github.com/hokein/electron-sample-apps.git
 6960  cd electron-sample-apps
 6961  npm install -g electron
 6962  sudo npm install -g electron
 6963  electron camera
 6964  electron <camera>
 6965  electron camera/
 6966  sudo chown root:root /usr/local/lib/node_modules/electron/dist/chrome-sandbox\nsudo chmod 4755 /usr/local/lib/node_modules/electron/dist/chrome-sandbox\n
 6967  electron camera/
 6968  cd
 6969  cd Downloads/Projeto_Software/versao-javascript
 6970  electron
 6971  electron .
 6972  cd
 6973  cd electron-sample-apps
 6974  nautilus .
 6975  vim package.json
 6976  ls
 6977  rm package.json
 6978  cd  camera
 6979  ls
 6980  vim package.json
 6981  vim main.js
 6982  vim index.html
 6983  vim app.js
 6984  npm start
 6985  electron .
 6986  vim package.json
 6987  electron .
 6988  npm start
 6989  electron . --no-sandbox\n
 6990  cat * >> file.txt
 6991  cat file.txt | clipboard
 6992  vim package.json
 6993  vim main.js4
 6994  vim main.js
 6995  vim index.html
 6996  vim app.js
 6997  npm install
 6998  npm start
 6999  electron . --no-sandbox\n


















package.json
{
  "name": "MyGPU",
  "version": "1.0.0",
  "description": "Monitor de hardware em tempo real",
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
    "appId": "com.mycompany.mygpu",
    "productName": "MyGPU",
    "linux": {
      "target": "AppImage",
      "category": "Utility",
      "icon": "icon-2.png"
    },
    "win": {
      "target": "nsis",
      "icon": "icon-2.png"
    }
  },
  "dependencies": {
    "systeminformation": "^5.23.0",
    "jquery": "^3.7.1"
  }
}



