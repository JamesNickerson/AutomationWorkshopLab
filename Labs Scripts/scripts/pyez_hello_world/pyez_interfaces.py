from pprint import pprint
from jnpr.junos import Device
from lxml import etree

dev = Device(host='172.16.0.2', user='root', password='Juniper')
dev.open()
xmlNetconfResult = dev.rpc.get_interface_information(terse = True)
# print(etree.tostring(xmlNetconfResult, pretty_print=True))
dev.close()

# dev.cli('show interfaces terse')


for e in xmlNetconfResult.xpath("//physical-interface/name"):
  print etree.tostring(e)
