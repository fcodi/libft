ifndef OS_MK
OS_MK :=

# **************************************************************************** #
#	Detect OS
# **************************************************************************** #

ifeq ($(OS),Windows_NT)
$(error $(OS) unsupported!)
else
override OS = $(shell uname 2>/dev/null || echo Unknown)
ifeq ($(OS),Unknown)
$(warning $(OS) OS!)
endif
endif

# **************************************************************************** #
#	Detect user shell
# **************************************************************************** #

#TODO Перепроверить необходимость напрямую обращаться к бинарнику *sh (shell)
ifeq ($(OS),Darwin)
SH = $(shell dscl . -read $(HOME) UserShell | grep -Eo "/bin/\w*sh")
endif
ifeq ($(OS),Linux)
SH = $(shell grep "^$(USER)" /etc/passwd | grep -Eo "/bin/\w*sh")
endif
ifeq ($(SH),)
$(warning Shell binary not found, set by default /usr/bin/env sh)
SH = /usr/bin/env sh
endif

endif