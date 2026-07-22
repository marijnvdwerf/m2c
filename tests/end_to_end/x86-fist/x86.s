# Bare fist stores a rounded integer without popping the x87 stack. Store the
# same value at word and dword widths, then prove it remains live by popping it.
test:
    FLD dword ptr [ESP + 0x4]
    FIST word ptr [_g_word]
    FIST dword ptr [_g_dword]
    FSTP st(0)
    RET
