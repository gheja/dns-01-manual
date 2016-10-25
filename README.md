# dns-01-manual

A manual implementation for **DNS-01** challenge hook used in dehydrated, a Let's Encrypt client.

When using this hook the script will tell you what to do to complete the **DNS-01** challenge of Let's Encrypt.


## Examples

``/path/to/dehydrated --challenge dns-01 --hook /path/to/hook.sh --signcsr /path/to/csr.pem``

``/path/to/dehydrated --challenge dns-01 --hook /path/to/hook.sh --revoke /path/to/cert.pem``


## Example run
```
./dehydrated --challenge dns-01 --hook hook.sh --signcsr csr.pem
#
# !! WARNING !! No main config file found, using default config!
#
 + Requesting challenge for example.com...

Add the following to the zone definition of example.com:
_acme-challenge.example.com. IN TXT "aaabbbcccddeeefffgghhh"

Press enter to continue...

 + Responding to challenge for example.com...

Now you can remove the following from the zone definition of example.com:
_acme-challenge.example.com. IN TXT "aaabbbcccddeeefffgghhh"

Press enter to continue...

 + Challenge is valid!
 + Requesting certificate...
 + Checking certificate...
 + Done!
# CERT #
-----BEGIN CERTIFICATE-----
EeMCjTofKBwgswBcHwVzMlODuDdqRyuYslQxzBAXCuQabxDwPSJOSQAKKe8vCQhP
rSgjV8QpEAEG4bfnVkh18FTKk3zQgJGG48sElS2VNXfl0JGfb66TX522p1eFYz42
...
XqRsfQudZfk9u5Z8E425XdC3GmA35Cc44LTOadp25EWAZQ013qwadCmBBcktgJyt
thK8wd9TGootJEI0RP118rG8Yn6vhgjsokGIkn4LWBIBkUcvAfJxH0rTyDDUTgYs
6tTMeaOh7D7TiO6uCXzBP12jw9HHNDwnENyJ2TlWEIa3t9bKFNMVKptAVJPgzHDk
c7ioHWFW4KtikrMsioo3HKHcmQFniPSYmNJeaH2LLKVWoI5w8XHG7i8dzcFDhGKF
-----END CERTIFICATE-----
```

## More info

More hooks: https://github.com/lukas2511/dehydrated/wiki/Examples-for-DNS-01-hooks

Dehydrated: https://github.com/lukas2511/dehydrated
