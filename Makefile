.PHONY: all

# ===========================
# Default: help section
# ===========================

info: header usage

define HEADER

============================== Python Development Environment ==============================

endef
export HEADER

header:
	clear
	@echo "$$HEADER"

usage:
	@echo "Project:"
	@echo "  make init                               Initialise the project for development"
	@echo ""

# ===========================
# Main commands
# ===========================

init: header do_init

# ===========================
# Recipes
# ===========================

do_init:
	docker build -t saundersdigital/python-dev .
	docker run --rm -it -v $(PWD)/code:/app saundersdigital/python-dev