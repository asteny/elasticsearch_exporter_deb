VERSION = 1.0.2
ITERATION = 0
UID ?= 0

all: build

build: download
	chmod -Rv 644 build/contrib/
	fpm -s dir -f -t deb \
		-n elasticsearch_exporter \
		-v $(VERSION) \
		--iteration $(ITERATION) \
		--after-install build/contrib/elasticsearch_exporter.postinstall \
		--after-remove build/contrib/elasticsearch_exporter.postrm \
		-p build/packages \
		/tmp/elasticsearch_exporter/elasticsearch_exporter=/usr/bin/ \
		build/contrib/elasticsearch_exporter.service=/lib/systemd/system/elasticsearch_exporter.service \
		build/contrib/elasticsearch_exporter.defaults=/etc/default/elasticsearch_exporter \
		build/contrib/elasticsearch_exporter.preset=/usr/lib/systemd/system-preset/elasticsearch_exporter.preset

download:
	cd /tmp && curl -Lo elasticsearch_exporter.tar.gz https://github.com/justwatchcom/elasticsearch_exporter/releases/download/v$(VERSION)/elasticsearch_exporter-$(VERSION).linux-amd64.tar.gz
	cd /tmp && tar -xvzf /tmp/elasticsearch_exporter.tar.gz && mv elasticsearch_exporter-$(VERSION).linux-amd64 elasticsearch_exporter
