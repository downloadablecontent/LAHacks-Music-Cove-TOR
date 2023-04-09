#!/bin/bash
function keep_alive() {
  python -m http.server --directory keep_alive
}
#install python dependencies and run site
function run_server() {
  cd LAHacks-Music-Cove
  node build --port 80
  cd ..
}
printf "$priv_key" > ./tor/hidden_service/hs_ed25519_secret_key
chmod 700 ./tor/hidden_service/
tor -f .torrc & run_server