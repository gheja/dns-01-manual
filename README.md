# dns-01-manual

A manual implementation for **DNS-01** challenge hook used in dehydrated, a Let's Encrypt client.

When using this hook the script will tell you what to do to complete the **DNS-01** challenge of Let's Encrypt.

Example usages:

``/path/to/dehydrated --hook /path/to/hook.sh --signcsr /path/to/csr.pem``

``/path/to/dehydrated --hook /path/to/hook.sh --revoke /path/to/cert.pem``

More hooks: https://github.com/lukas2511/dehydrated/wiki/Examples-for-DNS-01-hooks

More information on dehydrated: https://github.com/lukas2511/dehydrated
