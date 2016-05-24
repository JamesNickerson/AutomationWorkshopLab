require 'pp'
require 'net/netconf/jnpr'
require 'junos-ez/stdlib'

# login information for NETCONF session
login = { :target => 'vsrx' }

## create a NETCONF object to manage the device and open the connection ...

ndev = Netconf::SSH.new( login )
print "Connecting to device #{login[:target]} ... "
ndev.open
puts "OK!"

xml = ndev.rpc.get_interface_information(terse: true)
puts xml.to_s
ndev.close
