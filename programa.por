programa
{
    funcao inicio()
    {
        real divida, taxa_juros_simples, taxa_juros_compostos
        real montante_simples, montante_composto
        real juros_simples, juros_compostos
        real simples_mes, composto_mes, diferenca
        inteiro meses, i

        taxa_juros_simples = 12.0
        taxa_juros_compostos = 12.0

        escreva("==== Comparador de Juros Simples e Compostos ====\n\n")

        escreva("Digite o valor da divida (R$): ")
        leia(divida)

        escreva("Digite o prazo para pagamento (em meses): ")
        leia(meses)

        escreva("\n\n===== SIMULACAO MES A MES =====\n")
        escreva("Taxa de juros usada: ", taxa_juros_simples, "% ao mes\n")
        escreva("--------------------------------------------------------\n")
        escreva("Mes\tSimples (R$)\tComposto (R$)\tDiferenca (R$)\n")
        escreva("--------------------------------------------------------\n")

        montante_simples = divida
        montante_composto = divida

        para(i = 1; i <= meses; i++)
        {
            simples_mes = divida + (divida * taxa_juros_simples / 100 * i)
            composto_mes = divida * potencia((1 + taxa_juros_compostos / 100), i)
            diferenca = composto_mes - simples_mes

            escreva(i, "\t")
            escrevaArrendondado(simples_mes)
            escreva("\t\t")
            escrevaArrendondado(composto_mes)
            escreva("\t\t")
            escrevaArrendondado(diferenca)
            escreva("\n")
        }

        montante_simples = divida + (divida * taxa_juros_simples / 100 * meses)
        juros_simples = montante_simples - divida

        montante_composto = divida * potencia((1 + taxa_juros_compostos / 100), meses)
        juros_compostos = montante_composto - divida

        escreva("\n===== RESULTADOS FINAIS =====\n")
        escreva("Juros Simples:\n")
        escreva("  Total de Juros: R$ ")
        escrevaArrendondado(juros_simples)
        escreva("\n  Valor Final (divida + juros): R$ ")
        escrevaArrendondado(montante_simples)

        escreva("\n\nJuros Compostos:\n")
        escreva("  Total de Juros: R$ ")
        escrevaArrendondado(juros_compostos)
        escreva("\n  Valor Final (divida + juros): R$ ")
        escrevaArrendondado(montante_composto)

        escreva("\n\nDiferenca entre Juros Compostos e Simples apos ", meses, " meses: R$ ")
        escrevaArrendondado(juros_compostos - juros_simples)
        escreva("\n========================================================\n")
        escreva("Cuidado com os juros compostos no cartao de credito!\n")

        escreva("\nPrograma finalizado.\n")
    }

    funcao escrevaArrendondado(real valor)
    {
        inteiro parte_inteira
        inteiro duas_casas
        parte_inteira = valor
        duas_casas = (valor - parte_inteira) * 100

        se (duas_casas < 0)
        {
            duas_casas = -duas_casas
        }

        se (duas_casas < 10)
        {
            escreva(parte_inteira, ".0", duas_casas)
        }
        senao
        {
            escreva(parte_inteira, ".", duas_casas)
        }
    }

    funcao real potencia(real base, inteiro expoente)
    {
        inteiro i
        real resultado = 1
        para(i = 1; i <= expoente; i++)
        {
            resultado = resultado * base
        }
        retorne resultado
    }
}
