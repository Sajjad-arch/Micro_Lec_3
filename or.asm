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

   
    ;or msg print
    lea dx, ormsg
    mov ah, 9
    int 21h  
    
    ;or operstion 
    mov bl, 101b  ;b1 = 101b
    or bl, 111b  ;b1 = 101b or 111b = 7
    mov dl, bl    ;d1 = 7
    add dl, 48   ;ascii comvert , "7"
    mov ah, 2h    ;char print
    int 21h       ;interupt   

    
    exit:
    mov ah, 4ch
    int 21h  
    main endp
 
 end main
