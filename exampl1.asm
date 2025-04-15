.stack 100h
.data ; Data segment
     
    sum dw 0     ; Define sum as DW (double word - 2 bytes)
    count dw 10  ; Define count as DW, count = 10
    
.code
main:
    mov Ax, @data ; Set address of data segment to Ax
    mov Ds, Ax    ; Set Ds as Ax (addr of Data segment (.data))
    
    xor Cx, Cx    ; Set Cx = 0
							    ; For loop will use Cx as loop variable (i)
    
    for_loop:
              
        mov Ax, sum ; Ax = sum
        mov Bx, Cx  ; Bx = Cx (count - i)
        add Ax, Bx  ; Ax = Ax + Bx (Ax = sum + i)
        
        mov sum, Ax ; sum = Ax
                    
        inc Cx       ; Cx = Cx +1        
        cmp Cx, count; Cx == count           
        jbe for_loop ; jump to for_loop label if Cx <= count
               
    mov ax, sum      ; Ax = sum (only for test purposes)
end main
