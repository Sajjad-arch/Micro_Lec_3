.model small
.stack 100h
.data

    lower db "Input Lower Case: $"
    upper db "The Upper Case is: $"
                                     

    
   
.code

main proc

    mov ax, @data
    mov ds, ax  
    

    lea dx, lower
    mov ah, 9
    int 21h   
    
    ;take input
    mov ah, 1
    int 21h 
    mov bl, al  ; al = bl = base   
    mov ah,2
    sub bl, 32  ; convert lowercase to uppercase
         
    
    ;13,10 er alternate line
    mov dl,13
    int 21h
    
    mov dl,10
    int 21h
    
    ;print result
    lea dx, upper
    mov ah, 9
    int 21h
    
    mov dl, bl   
    mov ah, 2
    int 21h         
    

    
    

exit:
    mov ah, 4ch
    int 21h

main endp
end main
