
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 
sum dword 0 ;creamos la variable con tamaño de 32 bits

.code ;crea un espacio en memoria 
main proc ;creamos el metodo principal de PROC
	mov	eax,5 ;al registro eax le asigno  el valor de 5				
	add	eax,6 ;al registro eax le asigna lo que esta en eax mas 6= 5+6=B				
	mov sum,eax ;lo que esta en el registro eax lo lleva a la variable sum

	invoke ExitProcess,0 ;invoca el proceso y lo termina con el 0 positivo
main endp
end main