programa {
  funcao inicio() {
   inteiro numero[10]
   para(inteiro i=0; i<10; i++){
    escreva("Insira o número:")
    leia(numero[i])
   }
   
   para(inteiro i=9; i>0; i--){
    escreva(numero[i],"\n")
   }
  }
}
