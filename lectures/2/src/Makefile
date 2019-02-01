###
# Inspired by: https://stackoverflow.com/a/18137056/5801152
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(dir $(mkfile_path))
###

dockerfile := $(current_dir)../../../docker/Makefile

interact:
	@make -s -f $(dockerfile) interact

.PHONY: interact
