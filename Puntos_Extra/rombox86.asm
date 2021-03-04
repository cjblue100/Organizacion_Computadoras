mov eax, 5
int 0x80
mov edx,eax

mov ecx,0

loop_outer:
mov edi, edx
mov esi,0
sub edi,ecx


	cmp ecx,edx
	jge end_loop_outer
espace_l:
	cmp esi,edi
	jg espace_End
	
	mov eax, 11
	mov ebx,32
	int 0x80
	add esi,1
	jmp espace_l

espace_End:
	mov esi,0

loop_inner:

	cmp esi, ecx 
	jg end_loop_inner

	mov eax, 11
	mov ebx,42
	int 0x80
mov eax, 11
	mov ebx,32
	int 0x80
	add esi,1
	jmp loop_inner
end_loop_inner:
	mov eax, 11
	mov ebx,10
	int 0x80
	add ecx,1

	jmp loop_outer
end_loop_outer:

dec ecx

loop_outer2:
mov edi, edx
mov esi,0
sub edi,ecx
espace_l2:
	cmp esi,edi
	jg espace_End2
	
	mov eax, 11
	mov ebx,32
	int 0x80
	add esi,1
	jmp espace_l2

espace_End2:

	cmp ecx,0
	jbe end_loop_outer2
	mov esi,0
loop_inner2:

	cmp esi, ecx 
	jge end_loop_inner2
mov eax, 11
	mov ebx,32
	int 0x80
	mov eax, 11
	mov ebx,42
	int 0x80
	
	add esi,1
	jmp loop_inner2
end_loop_inner2:
	mov eax, 11
	mov ebx,10
	int 0x80
	dec ecx

	jmp loop_outer2
end_loop_outer2:
