Step One:
Connect to and find out the rpc for the command (from the ubuntu machine)
  ssh vsrx
  cli
  show interfaces terse | display xml rpc

Verify Its XML output
  show interfaces terse | display xml

Step Two:
Connect via Netconf
  ssh vsrx -s netconf
Issue the Rcp
  <rpc><get-interface-information><terse/></get-interface-information></rpc>
Verify the XML Output and Disconnect
ctl-d
