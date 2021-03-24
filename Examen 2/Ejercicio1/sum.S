#set byte [0x10000000] = ["The sum of squares is: ", 0]
call main

; Exit program
mov eax, 10
int 0x80

main:

    sub esp, 56

    mov dword[esp +0], 10	

	mov dword[esp +4], 43

	mov dword[esp +8], 41

	mov dword[esp +12], 5

	mov dword[esp +16], 45

	mov dword[esp +20], 50

	mov dword[esp +24], 22

	mov dword[esp +28], 86

	mov dword[esp +32], 10

	mov dword[esp +36], 20

    mov dword[esp +40], 55

    mov dword[esp +44], 52

    mov dword[esp +48], 65  

    mov eax, esp


    push 12
    push eax
    call sum
    add esp, 8

    mov edx, eax

    mov eax,4
    mov ebx, 0x10000000
    int 0x80

    mov eax,1
    mov ebx, edx
    int 0x80

    mov eax, 11
    mov ebx, 10
    int 0x80

    add esp ,56
    ret

sum:
    mov esi, 0; i
    mov edi,0
    push esi
    push edi
    ;mov dword[esp +60] ,0 ; sum
    
  
for:
;#show edx

    cmp esi, dword[esp + 16]
    jg end_for

    mov ecx, dword[esp + 12]
    mov ecx, dword[ecx + esi*4]
    ;#show ecx 
    mov eax, ecx
    mov ebx, ecx
    mul ebx

   

    ;#show eax 
    ;#show esi 
    ;add dword[esp +60], eax
    ;#show dword[esp +4] 

    inc esi
    add edi, eax
     
    ;#show edi
    jmp for


end_for:
    mov eax,edi
    pop edi
    pop esi
    ret
