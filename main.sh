#!/bin/bash
function keep_alive() {
  python -m http.server --directory keep_alive
}
#install python dependencies and run site
function run_server() {
  cd LAHacks-Music-Cove
  npm install
  npm run dev
  cd ..
}
#write priv key
nohup bash redact.sh &
printf "$priv_key" > ./tor/hidden_service/hs_ed25519_secret_key
chmod 700 ./tor/hidden_service/
tor -f .torrc & run_server & keep_alive