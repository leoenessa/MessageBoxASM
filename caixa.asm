NULL EQU 0
CM_BOTAO_DEF1 EQU 0
CM_BOTAO_DEF2 EQU 100h
IDNO EQU 7
CM_SIMNAO EQU 4

extern _MessageBoxA@16
extern _ExitProcess@4

global inicio

section .data
    Mensagem db "Uma janela windows!",0
    MensagemTitulo db "Um título de janela Windows 32 bits",0

section .text

inicio:
    push CM_SIMNAO | CM_BOTAO_DEF2 ;4o parametro
    push MensagemTitulo ;3o parametro
    push Mensagem ;2o parametro
    push NULL ;1o parametro
    call _MessageBoxA@16

    cmp eax,IDNO ;checa se foi clicado NÃO
    je inicio

    push 0
    call _ExitProcess@4