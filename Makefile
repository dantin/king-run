Output_Dir=deploy
Tool=hyde

all:
	@echo "HYDE tools"
	@echo
	@echo "  make gen: generate project to website"
	@echo "  make clean: clear workspace"

.PHONY: clean gen run

gen:
	$(Tool) gen

clean:
	find . -name "*~" | xargs rm
	rm -rf $(Output_Dir)

run:
	$(Tool) serve -a 192.168.26.13 -p 8000
