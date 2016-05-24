require 'pp'
require 'net/netconf/jnpr'
require 'junos-ez/stdlib'

# login information for NETCONF session
login = { :target => 'vsrx'}

## create a NETCONF object to manage the device and open the connection ...

ndev = Netconf::SSH.new( login )
print "Connecting to device #{login[:target]} ... "
ndev.open
puts "OK!"

## Now bind providers to the device object. The 'Junos::Ez::Provider' must be first.
## This will retrieve the device 'facts'.  The other providers allow you to define the
## provider variables; so this example is using 'l1_ports' and 'ip_ports', but you could name
## them what you like, yo!

Junos::Ez::Provider( ndev )
#pp ndev.facts.list
# get a hash of all facts and their associated values
pp ndev.facts.catalog
ndev.close
