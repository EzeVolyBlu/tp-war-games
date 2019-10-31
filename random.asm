
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

inicio: 
        
        
        mov ah,2Ch 
        int 21h 
        ;Return: CH = hour CL = minute DH = second DL = 1/100 seconds
        inc dh
        
            
        jpo IMPAR
        
        PAR:
            mov dx, offset msg_par
            mov ah, 9 
            int 21h 
        
            jmp END
        
        IMPAR:      
        
            mov dx, offset msg_impar
            mov ah, 9 
            int 21h         
            
        END:            
        
        
            ret           
        

msg_par db 'Par$'
msg_impar db 'Impar$'


proc prints
    
    mov ah, 9 
    int 21h 
    
endp


