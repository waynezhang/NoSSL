SDKVERSION = 4.3

ifeq ($(shell [ -f ./framework/makefiles/common.mk ] && echo 1 || echo 0),0)
all clean package install::
	git submodule update --init
	./framework/git-submodule-recur.sh init
	$(MAKE) $(MAKEFLAGS) MAKELEVEL=0 $@
else

TWEAK_NAME = NoSSL
NoSSL_OBJC_FILES = NoSSL.m

include framework/makefiles/common.mk
include framework/makefiles/tweak.mk

endif
