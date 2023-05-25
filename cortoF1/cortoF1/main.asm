
.386
.model flat, stdcall, c
.stack 4096

ExitProcess proto,dwExitCode:dword

.data
	cobrar	DWORD 70
	paga	DWORD 100
	vuelto	DWORD ?
	fmt db "%d ", 0AH, 0
	msg2 db "monto",0AH, 0
	msgIgual db	"El billete ingresado es de la misma cantidad, no hay cambio",0AH,0
	msgMayor db	"El billete ingresado es mayor",0AH,0
	msgVuelto db	"Vuelto de: Q. %d",0AH,0

.code
    includelib libucrt.lib
    includelib legacy_stdio_definitions.lib
    includelib libcmt.lib
    includelib libvcruntime.lib

    extrn printf:near
    extrn scanf:near
    extrn exit:near

public main
main proc


comparar:
	mov eax,DWORD ptr [cobrar]
	mov ebx,DWORD ptr [paga]
	.IF eax == ebx
		push offset msgIgual
		call printf
		call exit
	.ELSEIF eax < ebx
		push offset msgMayor
		call printf
		jmp resta
	.ENDIF
	

resta:
	sub	ebx, eax
	mov vuelto, ebx
	push vuelto
	push offset msgVuelto
	call printf	


	
RET

main endp
end
;ASIGNARSE