programa {
  funcao inicio() {
   cadeia nomes[5]
   nomes[0]="Arnoldo"
   nomes[1]="Cládio"
   nomes[2]="Adioson"
   nomes[3]="José"
   nomes[4]="Jair"

   para(inteiro i=0; i<4; i++){
      escreva("Digite o seu nome:")
      leia(nomes[i])
      escreva(nomes[i],"\n")
      
   }
  }
}
