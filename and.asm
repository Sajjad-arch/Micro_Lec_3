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
    
    ;and msg print
    lea dx, andmsg
    mov ah, 9
    int 21h
    
    
    ;and operstion 
    mov bl, 101b  ;b1 = 101b
    and bl, 111b  ;b1 = 101b and 111b = 5
    mov dl, bl    ;d1 = 5
    add dl, 30h   ;ascii comvert , "5"
    mov ah, 2h    ;char print
    int 21h       ;interupt
    

    exit:
    mov ah, 4ch
    int 21h  
    main endp
 
 end main
    
    
    
