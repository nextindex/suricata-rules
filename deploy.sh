#!/bin/bash

(head -n32 rules/PAW-PATRULES_AGENT_TESLA_FQDN.rules && tail -q -n +33 rules/*.rules) > PAW-PATRULES_ALL.rules 
sudo mv PAW-PATRULES_ALL.rules /var/lib/suricata/rules/
sudo systemctl restart suricata.service