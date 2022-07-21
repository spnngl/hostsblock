.DEFAULT_GOAL := all

local_services_folder=systemd
dest_services_folder=$(DESTDIR)/etc/systemd/system

local_conf_folder=etc/hosts.d
dest_conf_folder=$(DESTDIR)/etc/hosts.d

hostsblock_services=$(wildcard $(local_services_folder)/*)
hostsblock_conf=$(wildcard $(local_conf_folder)/*)

all: install

# TODO check rule for .hosts file and .txt urls file

install: install-systemd install-conf

install-systemd: $(subst $(local_services_folder)/, $(dest_services_folder)/, $(hostsblock_services))

install-conf: $(subst $(local_conf_folder)/, $(dest_conf_folder)/, $(hostsblock_conf))

$(dest_services_folder)/%: $(local_services_folder)/%
	/usr/bin/install -m 644 $? $@

$(dest_conf_folder)/%: $(local_conf_folder)/%
	/usr/bin/install -D -m 644 $? $@

.PHONY: all install install-systemd install-conf
