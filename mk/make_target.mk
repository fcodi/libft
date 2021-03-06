ifndef _MAKE_TARGET
define _MAKE_TARGET

$1 = $(MAKE) --no-print-directory \
	-C $2 -f $3 \
	PREFIX="$4" MK="$(MK)" NAME="$(NAME)"

ifdef SETTINGS_MK
$1 += SETTINGS_MK="$(SETTINGS_MK)"
endif

ifdef FILTER_RULES
$1 += $(filter $(FILTER_RULES),$(MAKECMDGOALS))
else
$1 += $(MAKECMDGOALS)
endif

ifdef SOURCE_FILES
$1 += SOURCE_FILES="$(SOURCE_FILES)"
endif

ifdef SOURCE_DIRECTORY
$1 += SOURCE_DIRECTORY="$(SOURCE_DIRECTORY)"
endif

ifdef SOURCE_PATH
$1 += SOURCE_PATH="$(SOURCE_PATH)"
endif

ifdef OBJECT_DIRECTORY
$1 += OBJECT_DIRECTORY="$(OBJECT_DIRECTORY)"
endif

ifdef INCLUDE_DIRECTORY
$1 += INCLUDE_DIRECTORY="$(INCLUDE_DIRECTORY)"
endif

ifdef INCLUDE_PATH
$1 += INCLUDE_PATH="$(INCLUDE_PATH)"
endif

ifdef INCLUDE_FILES
$1 += INCLUDE_FILES="$(INCLUDE_FILES)"
endif

ifdef LIBRARY_FILES
$1 += LIBRARY_FILES="$(LIBRARY_FILES)"
endif

ifdef LIBRARY_PATH
$1 += LIBRARY_PATH="$(LIBRARY_PATH)"
endif

ifdef LIBFT_PATH
$1 += LIBFT_PATH="$(LIBFT_PATH)"
endif

ifdef CFLAGS
$1 += CFLAGS="$(CFLAGS)"
endif

ifdef CPPFALGS
$1 += CPPFLAGS="$(CPPFLAGS)"
endif

ifdef LDFLAGS
$1 += LDFLAGS="$(LDFLAGS)"
endif

ifdef CLEAN_LIST
$1 += CLEAN_LIST="$(CLEAN_LIST)"
endif

ifdef FCLEAN_LIST
$1 += FCLEAN_LIST="$(FCLEAN_LIST)"
endif

ifdef UNINSTALL_LIST
$1 += UNINSTALL_LIST="$(UNINSTALL_LIST)"
endif

endef
endif