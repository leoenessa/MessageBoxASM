# MessageBoxASM
Outro programinha asm, agora p exibir caixa de mensagem do windows

1)nasm -f win32 caixa.asm -o caixa.o
2)ld -L c:/Windows/System32 -l kernel32 -l user32 -o caixa.exe caixa.o
