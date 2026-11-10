programa
{
    funcao inicio()
    {
        // Matriz para armazenar 4 usuários e suas respectivas senhas
        // Coluna 0: Usuário | Coluna 1: Senha
        cadeia dados[4][2] = {
            {"ana", "1234"},
            {"bruno", "5678"},
            {"carlos", "9876"},
            {"daniela", "4321"}
        }
        
        cadeia usuario_digitado, senha_digitada
        inteiro i, opcao
        logico usuario_encontrado = falso
        real saldo = 0.0
        
        escreva("=== SISTEMA BANCÁRIO ===\n")
        escreva("Digite o nome de usuário: ")
        leia(usuario_digitado)
        
        escreva("Digite a senha: ")
        leia(senha_digitada)
        
        // Verifica se o usuário e senha existem na matriz
        para(i = 0; i < 4; i++)
        {
            se (dados[i][0] == usuario_digitado e dados[i][1] == senha_digitada)
            {
                usuario_encontrado = verdadeiro
                pare // Encerra o loop assim que encontrar
            }
        }
        
        // Se não encontrar, encerra o programa
        se (nao usuario_encontrado)
        {
            escreva("\n[Erro] Usuário não cadastrado ou senha incorreta. Encerrando o programa.\n")
        }
        senao
        {
            // Se encontrado, exibe boas-vindas e entra no menu
            escreva("\nSeja bem-vindo(a), ", usuario_digitado, "!\n")
            
            faca
            {
                escreva("\n--- MENU ---\n")
                escreva("1 - Depositar\n")
                escreva("2 - Sacar\n")
                escreva("3 - Saldo\n")
                escreva("4 - Sair\n")
                escreva("Escolha uma opção: ")
                leia(opcao)
                
                escolha(opcao)
                {
                    caso 1:
                        real valor_deposito
                        escreva("Digite o valor a depositar: R$ ")
                        leia(valor_deposito)
                        
                        se (valor_deposito > 0)
                        {
                            saldo = saldo + valor_deposito
                            escreva("Depósito realizado com sucesso!\n")
                        }
                        senao
                        {
                            escreva("O valor do depósito deve ser maior que zero.\n")
                        }
                        pare
                        
                    caso 2:
                        real valor_saque
                        escreva("Digite o valor a sacar: R$ ")
                        leia(valor_saque)
                        
                        se (valor_saque > 0 e valor_saque <= saldo)
                        {
                            saldo = saldo - valor_saque
                            escreva("Saque realizado com sucesso!\n")
                        }
                        senao se (valor_saque > saldo)
                        {
                            escreva("Saldo insuficiente para realizar o saque.\n")
                        }
                        senao
                        {
                            escreva("O valor do saque deve ser maior que zero.\n")
                        }
                        pare
                        
                    caso 3:
                        escreva("Seu saldo atual é: R$ ", saldo, "\n")
                        pare
                        
                    caso 4:
                        escreva("Obrigado por utilizar nosso banco. Até logo!\n")
                        pare
                        
                    caso contrario:
                        escreva("Opção inválida! Escolha uma opção entre 1 e 4.\n")
                }
                
            } enquanto(opcao != 4)
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3811; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */