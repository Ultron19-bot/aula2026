programa {
  funcao inicio() {
   inteiro contador=0
   real numero, media=0.0, total=0.0
   caracter continuar = 'S'
   faca{
        escreva("Preencha o nº:")
        leia(numero)
        total = total + numero
        contador++
        escreva("Deseja continuar(S/s)?")
        leia(continuar)
   }enquanto(continuar=='S' ou continuar =='s')
      escreva("Total:",total,"\n")
      media = total/contador
      escreva("Média:",media) 
  }
}
