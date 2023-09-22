/*
Esto es un comentario muktilinea
*/

//este es un comentario de una linea 

#este tambien esc comentario de una linea

# Agregamos datos necesarios para imprimir

   .data 
msg:   .ascii"hola mundo desde assemby\xa\xd\x0"

   .global _start   # este es el main para assambly
   .global main     #este es el main para C
#ahora comienza el verdadero codigo
    .text #segmento de codigo

#este es el main del programa
_start:
main:
    push %rax       #guardando pila en RAX
    mov $msg, %rdi  #guardar direccion donde se encuentra el mensaje en rdi
    mov $0, %rsi    #indico en RSI que voy a usar output_message
    mov $0, %rax    #indico que requiero cero parametros
    xor %rax, %rax  #esta es otra forma de hacer RAX =0;
    call printf     #llamamos la funcion printf
    pop %rax        #restauramos a  RAX de la pila
    
    #return 0
    mov $60, %rax   #configuramos a RAX con el numero de la funcion llamar
    xor %rdi, %rdi  #hacemos RDI=0
    syscall
