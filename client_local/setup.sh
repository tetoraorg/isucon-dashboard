#!/bin/bash

# install td-agent (fluentd)
curl -fsSL https://toolbelt.treasuredata.com/sh/install-ubuntu-bionic-td-agent4.sh | sh

sudo bash -c '
  cp ./fluentd/config/fluent_sender.conf /etc/td-agent/td-agent.conf;

  # rootでfluentdを起動する
  cat /usr/lib/systemd/system/td-agent.service | sed s/User=td-agent/User=root/ | sed s/Group=td-agent/Group=root/ > /usr/lib/systemd/system/td-agent.service.service;

  systemctl restart td-agent.service;
'
