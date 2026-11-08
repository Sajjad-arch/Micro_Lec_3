 .model small
 .stack 100h
 .data
 
 
 andmsg db "AND Result: $"
 ormsg db 13,10, "OR REsult: $"
 xormsg db 13, 10, "XOR REsult: $"
 
 .code 
 
 main proc
    mov ax , @data
    mov ds, ax

        ;xor msg print
    lea dx, xormsg
    mov ah, 9
    int 21h  
    
    ;xor operstion 
    mov bl, 101b  ;b1 = 101b
    xor bl, 111b  ;b1 = 101b or 111b = 2
    mov dl, bl    ;d1 = 7
    add dl, 48   ;ascii comvert , "2"
    mov ah, 2h    ;char print
    int 21h       ;interupt

    
    exit:
    mov ah, 4ch
    int 21h  
    main endp
 
 end main
