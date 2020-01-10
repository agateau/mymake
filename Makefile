BIN_DIR := ${HOME}/.local/bin
PLUGIN_DIR := ${HOME}/.vim/after/plugin

all:

install:
	mkdir -p $(BIN_DIR) $(PLUGIN_DIR)
	cp -a mymake $(BIN_DIR)
	cp mymake.vim $(PLUGIN_DIR)
