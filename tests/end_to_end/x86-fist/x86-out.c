extern s32 g_dword;
extern s16 g_word;

void test(f32 arg0) {
    g_word = (s16) arg0;
    g_dword = (s32) arg0;
}
