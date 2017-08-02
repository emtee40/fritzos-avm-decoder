# project
#
BASENAME:=decoder
#
# binary directory
#
SRC_DIR=src
#
# shell scripts directory
#
SCRIPTS_DIR=scripts
#
# targets to make
#
.PHONY: all clean install uninstall install-scripts uninstall-scripts
#
all:
	$(MAKE) -C $(SRC_DIR) libnettle
	$(MAKE) -C $(SRC_DIR)

install:
	$(MAKE) -C $(SRC_DIR) install

uninstall:
	$(MAKE) -C $(SRC_DIR) uninstall

install-scripts:
	$(MAKE) -C $(SCRIPTS_DIR) install

uninstall-scripts:
	$(MAKE) -C $(SCRIPTS_DIR) uninstall

clean: 
	$(MAKE) -C $(SRC_DIR) clean
