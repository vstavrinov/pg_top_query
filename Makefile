
SHELL = /bin/sh
 
TARGET  = pg_top_query
 
PREFIX = $(DESTDIR)/usr/local
BINDIR = $(PREFIX)/bin
 
all: install
 
install: 
	install -D $(TARGET) $(BINDIR)/$(TARGET)
	install -D sql_formatter $(BINDIR)/sql_formatter
	install -D $(TARGET)-sudo /etc/sudoers.d/$(TARGET)-sudo
	install -D $(TARGET).conf /etc/zabbix/zabbix_agentd.d/$(TARGET).conf
 
uninstall:
	-rm $(BINDIR)/$(TARGET)
	-rm $(BINDIR)/sql_formatter
	-rm /etc/sudoers.d/$(TARGET)-sudo
	-rm /etc/zabbix/zabbix_agentd.d/$(TARGET).conf
 
