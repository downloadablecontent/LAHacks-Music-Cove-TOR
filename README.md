# What's this?

A TOR hidden service of [LAHacks-Music-Cove](https://github.com/PaddingProductions/LAHacks-Music-Cove) for more added privacy. If accessed from TOR, the server will not know your IP address. If accessed from TOR, visiting the TOR site, there will be even more benefits, such as being unblockable by ISPs or nation states. Also, no one will no where the server is being ran from.

When the dependencies are installed (see `replit.nix`) and `main.sh` is ran, a `tor/hidden_service` folder will be filled with the onion url of the site.

Deployed on Replit.

## Running

Cloning the git repo

`git clone https://github.com/downloadablecontent/LAHacks-Music-Cove-TOR`

`git submodule init`

`git submodule update`

After installing dependencies in `replit.nix`, follow the [instructions here](https://kit.svelte.dev/docs/adapter-node), up to the `npm run build`:

`cd LAHacks-Music-Cove`
`npm i -D @sveltejs/adapter-node`
`npm install`
`npm run build`

Then run the hidden service after setting the ENV variables `PORT=80` and `priv_key=hex priv key` (find hex of the private key by converting private key to hex using `pkgs.unixtools.xxd`, although for that you must haev a private key file already which you can do by running `tor` with hidden service in `.torcc`):

`bash main.sh`

TOR Site: http://5bswftgbb4o4ydo3y5j7zw3qljec4fa43gadnvdjbfa32ybdc7cgnkid.onion/
