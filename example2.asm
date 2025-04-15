.stack 100h  

.data  ;  Data segment
     
    i dw 0 ; Variable declerations for loops.
    j dw 0
    k dw 0
    t dw 0
    
.code  ; Code Segment
main:  

mov Ax, @data       ; DS (Data segment must be setted as @data)  
mov ds, Ax   

mov t, 0            ; t = 0


mov i, 0            ; i = 0
forloop_i:      
    inc t           ; t=t+1
              
              
    mov j, 0        ; j=0 (for_j will be start)
    forloop_j:
        inc t           ; t=t+1
        
        mov k, 0        ; k=0
        forloop_k:
            inc t       ; t=t+1
            
            inc k       ; k=k+1
            cmp k, 5    ; k == 5 ? sets flags
            jb forloop_k; jump if k<5
        
        inc j       ; j=j+1
        cmp j, 5    ; j == 5
        jb forloop_j; jump if j<5
    
    
    inc i       ; i=i+1
    cmp i, 5    ; i == 5
    jb forloop_i; jump if i<5
        
    

mov Ax, t   ; Ax = t (only for test purposes)       

end main
