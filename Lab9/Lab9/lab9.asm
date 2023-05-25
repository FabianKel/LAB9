; ----------------------------------------------
; Universidad del Valle de Guatemala
; Organización de Computadoras y Assembler
; Lab 9
; Derek Arreaga-22537, Mónica Salvatierra-22249
; Evaluador de régimen apropiado en SAT y obligaciones fiscales
; 16/05/23
; ----------------------------------------------


.386
.model flat, stdcall, c


.stack 4096
ExitProcess proto,dwExitCode:dword


.data
notApply DWORD 0

; --------------------------------
; CREAR ARRAYS VACÍOS
; --------------------------------
;Facturado
PERSONA DWORD 12 DUP(?) ; Enero a Diciembre
;IVA
IVA DWORD 12 DUP(0) ; Enero a Diciembre
;TOTAL
IVAtotal DWORD 12 DUP(0) ; Enero a Diciembre
;Meses
MESES   dword   1,2,3,4,5,6,7,8,9,10,11,12

fmt db "%s",0  
        

;VALORES PARA IMPRIMIR

Mes DWORD ?
Facturado   DD  ?
IVAcalc DD  ?
TotalMes   DD  ?
Total   DD  ?


;SCAN
inputFormat db "%d", 0
msgInput db "Ingrese el monto facturado del mes:", 0
msgMes db " -  %d ", 0
msgMes2 db " MES:  %d ", 0
msgIVA byte "ISR: Q. %d",0Ah,0
inputBuffer dd 0
msgTotal    byte    "Total del mes: Q. %d" ,0Ah,0
msgTotalA    byte    "Total Anual: Q. %d" ,0Ah,0

;Final
;Facturado: Q.5000
msgFact byte    "Facturado: Q. %d",0Ah,0

msgMed db   "Su monto facturado total excede de Q.150,000 por lo que debe actualizar su régimen tributario a *MEDIANO CONTRIBUYENTE*",0Ah,0
msgPeque db   "Su monto facturado total es menor qué Q.150,000 por lo que debe continuar como *PEQUEÑO CONTRIBUYENTE*",0Ah,0

separador db "------------------------------------------------------------------", 0Ah, 0
Lfinal db "==================================================================", 0Ah, 0






.code

;librerias:
includelib libucrt.lib
includelib legacy_stdio_definitions.lib
includelib libcmt.lib
includelib libvcruntime.lib
includelib msvcrt.lib

extrn printf:near
extrn scanf:near
extrn exit:near


public main

main PROC ;Inicializa el procedimiento

; Leer monto facturado por mes



mov eax,12
mov  edi,0      ;edi"i" al es el index actual del array


leerMeses:
  
; Leer el monto facturado ingresado por el usuario
    
;Enero
    push offset msgInput
    call printf  ; Imprime el mensaje de entrada
    mov ebx,[MESES+edi] 
    mov Mes,ebx
    push DWORD ptr [Mes]
    push offset msgMes
    call printf
    push offset inputBuffer
    push offset inputFormat
    call scanf
    mov ecx,inputBuffer
    mov [PERSONA+edi], ecx
    mov esi, 0
;-----------------------------------------------------------
;Febrero
    add edi,4
    push offset msgInput
    call printf  ; Imprime el mensaje de entrada
    mov ebx,[MESES+edi] 
    mov Mes,ebx
    push DWORD ptr [Mes]
    push offset msgMes
    call printf

    push offset inputBuffer
    push offset inputFormat
    call scanf
    mov ecx,inputBuffer
    mov [PERSONA+edi], ecx
    
    mov esi, 0
;-----------------------------------------------------------
;Marzo
    add edi,4
    push offset msgInput
    call printf  ; Imprime el mensaje de entrada
    mov ebx,[MESES+edi] 
    mov Mes,ebx
    push DWORD ptr [Mes]
    push offset msgMes
    call printf

    push offset inputBuffer
    push offset inputFormat
    call scanf
    mov ecx,inputBuffer
    mov [PERSONA+edi], ecx
    
    mov esi, 0
;-----------------------------------------------------------
;Abril
    add edi,4
    push offset msgInput
    call printf  ; Imprime el mensaje de entrada
    mov ebx,[MESES+edi] 
    mov Mes,ebx
    push DWORD ptr [Mes]
    push offset msgMes
    call printf

    push offset inputBuffer
    push offset inputFormat
    call scanf
    mov ecx,inputBuffer
    mov [PERSONA+edi], ecx
    
    mov esi, 0
;-----------------------------------------------------------
;Mayo
    add edi,4
    push offset msgInput
    call printf  ; Imprime el mensaje de entrada
    mov ebx,[MESES+edi] 
    mov Mes,ebx
    push DWORD ptr [Mes]
    push offset msgMes
    call printf

    push offset inputBuffer
    push offset inputFormat
    call scanf
    mov ecx,inputBuffer
    mov [PERSONA+edi], ecx
    
    mov esi, 0
;-----------------------------------------------------------
;Junio
    add edi,4
    push offset msgInput
    call printf  ; Imprime el mensaje de entrada
    mov ebx,[MESES+edi] 
    mov Mes,ebx
    push DWORD ptr [Mes]
    push offset msgMes
    call printf

    push offset inputBuffer
    push offset inputFormat
    call scanf
    mov ecx,inputBuffer
    mov [PERSONA+edi], ecx
    
    mov esi, 0
;-----------------------------------------------------------
;Julio
    add edi,4
    push offset msgInput
    call printf  ; Imprime el mensaje de entrada
    mov ebx,[MESES+edi] 
    mov Mes,ebx
    push DWORD ptr [Mes]
    push offset msgMes
    call printf

    push offset inputBuffer
    push offset inputFormat
    call scanf
    mov ecx,inputBuffer
    mov [PERSONA+edi], ecx
    
    mov esi, 0
;-----------------------------------------------------------
;Agosto
    add edi,4
    push offset msgInput
    call printf  ; Imprime el mensaje de entrada
    mov ebx,[MESES+edi] 
    mov Mes,ebx
    push DWORD ptr [Mes]
    push offset msgMes
    call printf

    push offset inputBuffer
    push offset inputFormat
    call scanf
    mov ecx,inputBuffer
    mov [PERSONA+edi], ecx
    
    mov esi, 0
;-----------------------------------------------------------
;Septiembre
    add edi,4
    push offset msgInput
    call printf  ; Imprime el mensaje de entrada
    mov ebx,[MESES+edi] 
    mov Mes,ebx
    push DWORD ptr [Mes]
    push offset msgMes
    call printf

    push offset inputBuffer
    push offset inputFormat
    call scanf
    mov ecx,inputBuffer
    mov [PERSONA+edi], ecx
    
    mov esi, 0
;-----------------------------------------------------------
;Octubre
    add edi,4
    push offset msgInput
    call printf  ; Imprime el mensaje de entrada
    mov ebx,[MESES+edi] 
    mov Mes,ebx
    push DWORD ptr [Mes]
    push offset msgMes
    call printf

    push offset inputBuffer
    push offset inputFormat
    call scanf
    mov ecx,inputBuffer
    mov [PERSONA+edi], ecx
    
    mov esi, 0
;-----------------------------------------------------------
;Noviembre
    add edi,4
    push offset msgInput
    call printf  ; Imprime el mensaje de entrada
    mov ebx,[MESES+edi] 
    mov Mes,ebx
    push DWORD ptr [Mes]
    push offset msgMes
    call printf

    push offset inputBuffer
    push offset inputFormat
    call scanf
    mov ecx,inputBuffer
    mov [PERSONA+edi], ecx
    
    mov esi, 0
;-----------------------------------------------------------
;Diciembre
    add edi,4
    push offset msgInput
    call printf  ; Imprime el mensaje de entrada
    mov ebx,[MESES+edi] 
    mov Mes,ebx
    push DWORD ptr [Mes]
    push offset msgMes
    call printf

    push offset inputBuffer
    push offset inputFormat
    call scanf
    mov ecx,inputBuffer
    mov [PERSONA+edi], ecx
    
    mov esi, 0

;-----------------------------------------------------------
; --------------------------------
; CALCULAR EL IVA SEGÚN EL MONTO MENSUAL
; --------------------------------
;  1. Declarar valores para el ciclo de calcular IVA
; --------------------------------
inicioISR:

        mov  ebx,12     ;eax Cantidad de meses por recorrer (contador)
        mov  eax,0      ;ebx va a guardar el IVA
        mov  edi,0      ;edi"i" al es el index actual del array
; --------------------------------
;  2. 
; --------------------------------
bucleIVA:  mov     eax,    [PERSONA+edi]   ;ebx carga el elemento actual en ebx
        imul    eax,    5               ;ebx MULTIPLICA x5 EL VALOR
        mov     ecx,    100              ;Cargar el divisor en ecx
        xor     edx,    edx             ;edx,edx Hacer que edx sea cero
        idiv    ecx                     ;ecx DIVIDE ENTRE 100 EL VALOR
        mov     [IVA+edi],  eax         ;Guardar en Array IVA
        add     eax,   [PERSONA+edi] 
        mov     [IVAtotal+edi],    eax       ;ALMACENA EL NUEVO VALOR + "IVA" EN EL ARRAY ISRtotal
        add     edi,    4               ;edi AGREGA 4 PARA OBTENER LA SIGUIENTE POSICION EN LA SIGUIENTE VUELTA
        dec     ebx                     ;eax restar al contador
        jnz     bucleIVA                   ;Si el contador no es 0, se repite el bucle


inicioSUMA:
        mov  eax,12    ;Cantidad de meses por recorrer (contador)
        mov  ebx,0       ;bl va a guardar la suma
        mov  edi,0      ;al es el index actual del array
; --------------------------------
;  Bucle para sumar el array
; --------------------------------
bucleSUMA:  
        add  ebx, [Persona+edi] ;realiza la suma del elemento actual en ebx
        add  edi, 4
        dec  eax        ;restar al contador
        jnz  bucleSUMA        ;Si el contador no es 0, se repite el bucle
        mov Total,  ebx

;---------------------------------------------------------------
;--------------------------IMPRIMIR-----------------------------
;---------------------------------------------------------------

;Mes:   1
;Facturado: Q.5000
;IVA: Q.250
;Total: Q.5250

push ebp
mov ebp, esp

    mov eax,0
    mov ebx,12
    mov edi,0



imprimir:

;Mes: Junio

mov eax,[MESES+edi]
mov Mes ,   eax
push dword ptr [Mes]
push dword ptr [Mes]
push    offset  msgMes2
call    printf

;Facturado

mov eax,[PERSONA+edi]
mov Facturado ,   eax
push dword ptr [Facturado]
push    offset  msgFact
call    printf


;IVA: Q. 250
    mov eax, [IVA+edi]

    mov IVAcalc,eax

    push dword ptr [IVAcalc]
    push offset msgIVA
    call printf

    ;División
    push offset separador
    call printf

;Suma del Mes
    
    mov eax, [IVAtotal+edi]

    mov TotalMes,eax

    push dword ptr [TotalMes]
    push offset msgTotal
    call printf

    ;Final
    push offset Lfinal
    call printf



;Cambios para bucle
    add  edi, 4
    dec  ebx        ;restar al contador
    jnz  imprimir   ;Si el contador no es 0, se repite el bucle

;Total Anual

    push dword ptr [Total]
    push offset msgTotalA
    call printf

;Imprimir si es mediano o pequeño contribuyente

;Comparar el monto con Q150,000
  mov eax, Total
  cmp eax, 150000

    jg Mediano  ;Si es mayor, salta a "Mediano", donde imprime que debe ser mediano contribuyente

    push offset msgPeque    ;Si es menor, imprime que debe ser pequeño y luego salta hacia la parte de "Salir"
    call printf
    add esp, 7

    jmp salir

Mediano:
    push offset msgMed
    call printf
    add esp, 7




salir:
    push 0
    call exit


main ENDP ;termina el procedimiento
end