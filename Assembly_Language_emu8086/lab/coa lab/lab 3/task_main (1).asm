.model small
.stack 100h
.data
x db ?
y db ?

msg1 db 'The sum of $'
msg2 db ' and $'
msg3 db ' is $'

.code
main proc
     
     mov ax,@data
     mov ds, ax
     
     mov bl,'?'
     mov ah,2
     mov dl,bl
     int 21h
     
     mov ah,1
     int 21h
     mov x,al
     
     mov ah,1
     int 21h
     mov y,al
     
     mov bl,x
     add bl,y
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
     lea dx,msg1
     mov ah,9
     int 21h
     
     mov ah,2
     mov dl,x
     int 21h
     
     lea dx,msg2
     mov ah,9
     int 21h
     
     mov ah,2
     mov dl,y
     int 21h
     
     lea dx,msg3
     mov ah,9
     int 21h
     
     sub bl,48d
     

     
     mov ah,2
     mov dl,bl
     int 21h
     
     
     
     exit:
     mov ah,4ch
     int 21h
     main endp
end main




