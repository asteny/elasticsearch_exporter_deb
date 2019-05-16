[![Build Status](https://travis-ci.org/asteny/elasticsearch_exporter_deb.svg?branch=master)](https://travis-ci.org/asteny/elasticsearch_exporter_deb)[![Download](https://api.bintray.com/packages/asten/elasticsearch_exporter/elasticsearch_exporter/images/download.svg)](https://bintray.com/asten/elasticsearch_exporter/elasticsearch_exporter/_latestVersion)


Elasticsearch_exporter deb
==========================

Deb package with [Elasticsearch_exporter](https://github.com/justwatchcom/elasticsearch_exporter) for Ubuntu (16.04 - 18.04)

Installation
------------
```bash
apt-get update
apt-get install gnupg2 apt-transport-https ca-certificates -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/asten/elasticsearch_exporter xenial main" | tee -a /etc/apt/sources.list.d/elasticsearch_exporter.list
apt-get update
apt-get install elasticsearch_exporter -y

```

[All package versions in Bintray repo](https://bintray.com/asten/elasticsearch_exporter/elasticsearch_exporter)
-------------------------------------------------------------------------------
