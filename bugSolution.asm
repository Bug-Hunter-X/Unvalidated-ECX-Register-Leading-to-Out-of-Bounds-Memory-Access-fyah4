mov ecx, [some_ecx_value] ; Assumed that ecx has been initialized 
mov eax, [some_array_size] ; some_array_size is declared and defined elsewhere
cmp ecx, eax ; check if ecx is less than array size
jge out_of_bounds ; jump to error handling if ecx is out of bounds 
mov eax, [ebx+ecx*4] ; Access memory only if ecx is in bounds
jmp end_access
out_of_bounds:
; handle out of bounds error, print error message etc 
end_access: