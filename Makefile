.DELETE_ON_ERROR:

ROM = finalfightguy-us.sfc
ASM = hack.asm
HACK = hack.sfc
SYM = hack.sym

AS = asar
ASFLAGS = --symbols=wla

$(HACK): $(ASM)
	cp $(ROM) $(HACK)
	$(AS) $(ASFLAGS) $(ASM) $(HACK)

.PHONY:
clean:
	rm -rf $(HACK) $(SYM)
