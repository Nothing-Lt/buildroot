################################################################################
#
# libevl
#
################################################################################

LIBEVL_VERSION = 0.1
LIBEVL_SITE = https://github.com/Nothing-Lt/libevl/archive/refs/tags
LIBEVL_SOURCE = libevl-$(LIBEVL_VERSION).tar.gz
LIBEVL_LICENSE = MIT
LIBEVL_LICENSE_FILES = LICENSE

LIBEVL_INSTALL_STAGING = YES

# kernel is required for uapi before compile
LIBEVL_DEPENDENCIES = \
	linux

# Specify the source dir for linux-evl
LIBEVL_CONF_OPTS = \
	-Duapi=$(LINUX_DIR)

# Remove error: "_FORTIFY_SOURCE" redefined [-Werror]
override LIBEVL_CFLAGS += ${LIBEVL_CFLAGS//-D_FORTIFY_SOURCE=1/}
override LIBEVL_CXXFLAGS += ${LIBEVL_CXXFLAGS//-D_FORTIFY_SOURCE=1/}

$(eval $(meson-package))
