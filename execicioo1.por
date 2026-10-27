programa {
  funcao inicio() {
  inteiro idade, total_maior=0, total_menor=0
  inteiro quantidade_pessoas=5

  para(inteiroi=1; i<=quantidade_pessoas;i++)
    escreva("idade:")
    leia(idade)
    se(idade >=18){
      total_maior++
    }senao{
      total_menor++
    }  
  }
  escreva()
}
