programa {
  funcao inicio() {
   cadeia times[8], campeao="", lanternas=""
   inteiro pontuacao[8], maior_pontuacao=0, menor_pontuacao=100

   para(inteiro i=0; i<8; i++){
    escreva("Nome do time:")
    leia(times[i])
    escreva("Pontuação:")
    leia(pontuacao[i])
    se(pontuacao[i] > maior_pontuacao){
      maior_pontuacao = pontuacao[i]
      campeao = times[i]  
    }
    se(pontuacao[i]< menor_pontuacao){
      menor_pontuacao = pontuacao[i]
      lanternas = times[i]
    }
   }
    escreva("Campeão:",campeao,"Total de Pontos:",maior_pontuacao)
    escreva("\nLanterna:",lanternas,"Total de Pontos:",menor_pontuacao)
  }
}
