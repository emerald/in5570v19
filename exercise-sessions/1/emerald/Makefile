###
# Inspired by: https://stackoverflow.com/a/18137056/5801152
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(dir $(mkfile_path))
###

dockerfile := $(current_dir)../../../docker/Makefile

interact:
	@make -s -f $(dockerfile) interact

runall:
	for f in *.m; do ec "$${f}"; emx "$${f%.*}.x" ; done

.PHONY: interact runall
