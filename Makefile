Output_Dir=deploy
Tool=hyde

all:
	@echo "HYDE tools"
	@echo
	@echo "  make clean: clear workspace"
	@echo "  make gen:   generate deploy directory"
	@echo "  make run:   run local tier"

.PHONY: clean gen run

gen:
	$(Tool) gen

clean:
	find . -name "*~" | xargs rm
	rm -rf $(Output_Dir)

run:
	$(Tool) serve -a 192.168.26.13 -p 8000
