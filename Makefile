SUBDIRS:=bridge-utils/libbridge bridge-utils/brctl lib/ul_lib busybox-1.13 udhcp-0.9.8 boa-0.94.13/src iptables-1.3.8 poptop-1.1.4 iproute2 miniupnpd-20090605 smtpclient igmpproxy captcha miniupnpc-1.6

PHONY := all $(SUBDIRS)
all: $(SUBDIRS)
	@echo -e "\nDone!\n"

$(SUBDIRS):
	echo "========================================================================"
	echo -e "\033[32m$$i\033[0m"
	echo "------------------------------------------------------------------------"
	$(MAKE) -C $@

PHONY += clean
clean:
	for i in $(SUBDIRS) ; do \
		echo -e "\033[31m$$i\033[0m"; \
		$(MAKE) -C $$i clean; \
	done

.PHONY: $(PHONY)
