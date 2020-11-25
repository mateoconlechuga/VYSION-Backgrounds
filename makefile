ifeq ($(OS),Windows_NT)
	SHELL := cmd.exe
	NATIVEMKDR = ( mkdir $1 2>nul || call )
else
	NATIVEMKDR = mkdir -p $1
endif
MKDIR = $(call NATIVEMKDR,$1)

all:
	$(call MKDIR,appvars)
	convimg

.PHONY: all
