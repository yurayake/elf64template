BITS 64

; ELFヘッダ
db 0x7f ; e_ident[0]
db 'E'  ; e_ident[1]
db 'L'  ; e_ident[2]
db 'F'  ; e_ident[3]
db 2    ; e_ident[4]
db 1    ; e_ident[5]
db 1    ; e_ident[6]
db 0    ; e_ident[7]
db 0    ; e_ident[8]
db 0    ; e_ident[9]
db 0    ; e_ident[10]
db 0    ; e_ident[11]
db 0    ; e_ident[12]
db 0    ; e_ident[13]
db 0    ; e_ident[14]
db 0    ; e_ident[15]
dw 2    ; e_type
dw 62   ; e_machine
dd 1    ; e_version
dq      ; e_entry
dq 64   ; e_phoff
dq 0    ; e_shoff
dd 0    ; e_flags
dw 64   ; e_ehsize
dw 56   ; e_phentsize
dw 2    ; e_phnum
dw 0    ; e_shentsize
dw 0    ; e_shnum
dw 0    ; e_shstrndx

; プログラムヘッダ(テキスト)
dd 1    ; p_type
dd 5    ; p_flags
dq      ; p_offset
dq      ; p_vaddr
dq 0    ; p_paddr
dq 0    ; p_filesz
dq 0    ; p_memsz
dq      ; p_align

; プログラムヘッダ(データ)
dd 1   ; p_type
dd 7   ; p_flags
dq     ; p_offset
dq     ; p_vaddr
dq 0   ; p_paddr
dq 0   ; p_filesz
dq 0   ; p_memsz
dq     ; p_align
