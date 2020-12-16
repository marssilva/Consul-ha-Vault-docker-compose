storage "consul" {
   address	= "consul-agent-1:8500"
   path        = "vault/"
}

listener "tcp" {
   address         = "0.0.0.0:8200"
   cluster_address = "127.0.0.1:8201"
   tls_disable     = 1 
}

ui = true
api_addr = "http://0.0.0.0:8200"
cluster_name = "vault-server-01"
disable_cache = true
max_lease_ttl = "12h"
default_lease_ttl = "6h"
