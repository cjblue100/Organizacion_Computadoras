mov eax, 5
int 0x80
mov edx,eax

mov ecx,0
mov dword[0x10000000],edx
dec dword[0x10000000]


#show dword[0x10000000] signed decimal
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
	


	cmp esi, 0
	je jelse
	cmp esi, ecx
	je jelse
	jmp else2
jmp counter
jelse:
	mov eax, 11
	mov ebx,42
	int 0x80
mov eax, 11
	mov ebx,32
	int 0x80
	jmp counter
else2:
	mov eax, 11
	mov ebx,32
	int 0x80
	mov eax, 11
	mov ebx,32
	int 0x80


counter:
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


	cmp ecx,0
	jbe end_loop_outer2
espace_l2:
	cmp esi,edi
	jg espace_End2
	
	mov eax, 11
	mov ebx,32
	int 0x80
	add esi,1
	jmp espace_l2

espace_End2:
	mov esi,0
loop_inner2:

cmp esi, ecx 
	jg end_loop_inner2
	
	cmp ecx,0
	je jump2
	jmp else4

jump2:
	mov eax, 11
	mov ebx,42
	int 0x80
	mov eax, 11
	mov ebx,32
	int 0x80
	jmp counter2
else4:
	mov dword[0x10000000 +4],ecx
	dec dword[0x10000000 +4]
	cmp esi, 0
	je jelse2
	cmp esi, dword[0x10000000 +4]
	je jelse2
	jmp else3
jmp counter2
jelse2:
	
mov eax, 11
	mov ebx,32
	int 0x80
	mov eax, 11
	mov ebx,42
	int 0x80
	jmp counter2
else3:
	mov eax, 11
	mov ebx,32
	int 0x80
	mov eax, 11
	mov ebx,32
	int 0x80


counter2:
	add esi,1
	jmp loop_inner2
end_loop_inner2:
	mov eax, 11
	mov ebx,10
	int 0x80
	dec ecx

	jmp loop_outer2
end_loop_outer2:

