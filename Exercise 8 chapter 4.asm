;Problem # 8:
;Using a loop and indexed addressing, write code that rotates the members of a 32-bit integer array forward one position. 
;The value at the end of the array must wrap around to the ?rst position. For example, the array [10,20,30,40] would be transformed into [40,10,20,30].

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
array DWORD 10,20,30,40
arrayType DWORD TYPE array
newArray DWORD LENGTHOF array DUP(?)
lastElement DWORD ?

.code
main PROC
   
    ;Get first element address in ESI
    mov esi, OFFSET array

    ;Get address of next element in EDI
    mov edi, OFFSET newArray
    add edi, TYPE newArray

    ;set loop count into ecx
    mov ecx, LENGTHOF array

L2:
    mov eax, [esi]
    mov [edi], EAX

    add esi, TYPE array
    add edi, TYPE array

    loop L2

    ;set last element from array in newArray first position
    mov edi,OFFSET newArray
    mov eax, [esi]
    mov [edi], EAX

INVOKE ExitProcess,0
main ENDP
END main