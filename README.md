# trabalho_portugol

**Documentacao do Programa: Comparador de Juros Simples e Compostos em Portugol**

---

# 1. Introducao
Este documento tem como objetivo explicar de forma detalhada o funcionamento do programa escrito em Portugol, que compara o crescimento de uma divida com juros simples e com juros compostos. O programa calcula e exibe os valores mes a mes, demonstrando a diferenca e o impacto desses dois tipos de juros.

---

# 2. Onde Precisamos Ter Cuidado com os Juros Compostos no Nosso Dia a Dia
Os **juros compostos** estao presentes em diversas situacoes financeiras do cotidiano e representam um grande risco quando associados a **dividas**. O crescimento exponencial faz com que pequenas dividas se tornem rapidamente valores impagaveis.

## Onde os Juros Compostos Sao Comuns (e Perigosos):

### Cartao de Credito
- Ao nao pagar a **fatura completa**, o saldo devedor eh financiado com **juros compostos mensais**, que podem superar **12% ao mes**.
- Uma divida de R$ 500,00 pode dobrar de valor em poucos meses.
- Por isso, eh fundamental pagar sempre a fatura integral para evitar a "bola de neve".

### Cheque Especial
- Funciona de maneira semelhante ao cartao, com **altas taxas compostas**.

### Emprestimos Mal Planejados
- Muitas vezes possuem **juros compostos**, tornando o valor final pago muito superior ao valor originalmente emprestado.

## Como Podemos Usar Melhor o Juros Simples:

### Emprestimos Pessoais com Juros Simples
- Custo previsivel e menor, sem juros sobre juros.

### Negociacao de Dividas
- Busque propostas onde o saldo devedor seja recalculado sem juros compostos, com base apenas em juros simples.

### Educacao e Planejamento
- Entender a diferenca entre juros simples e compostos evita armadilhas financeiras. O programa apresentado ajuda nessa visualizacao.

### Conclusao
- Evite juros compostos ao dever dinheiro, mas aproveite-os ao investir.

---

# 3. Estrutura Geral do Programa
O programa esta dividido em:

- Declaracao de variaveis.
- Entrada de dados.
- Calculo dos juros simples e compostos.
- Exibicao dos valores mes a mes.
- Exibicao dos resultados finais.

---

# 4. Explicacao Detalhada por Linha

### Linha 01: programa
Define o inicio do programa em Portugol. Eh obrigatorio.

### Linha 02: funcao inicio()
Todo programa em Portugol comeca sua execucao dentro da funcao "inicio".

### Linhas 04 a 10: Declaracao de variaveis
Declaramos variaveis para armazenar:
- **divida**: valor inicial informado pelo usuario.
- **taxa_juros_simples / compostos**: taxa de juros usada no calculo.
- **montante_simples / composto**: valor acumulado em cada tipo de juros.
- **juros_simples / compostos**: total de juros acumulados.
- **simples_mes / composto_mes / diferenca**: valores de controle mes a mes.
- **meses / i**: controle de iteracao.

### Linha 12 a 14: Definicao das taxas
Taxas fixas de **12% ao mes**, simulando a media de juros de cartao de credito no Brasil.

### Linha 16 a 21: Entrada de dados
Solicita ao usuario o valor da divida e o prazo em meses.

### Linha 23 a 26: Cabecalho da simulacao
Informa ao usuario as taxas e estrutura da exibicao dos dados.

### Linha 29 a 30: Inicializacao dos montantes
Define o ponto de partida: a divida original.

### Linha 32 a 46: Laco de repeticao para calculo mes a mes
Para cada mes, calcula:
- **simples_mes**: usando a formula de juros simples.
- **composto_mes**: usando a funcao potencia para simular juros compostos.
- **diferenca**: diferenca entre os dois montantes.

A exibicao eh feita com duas casas decimais atraves da funcao escrevaArrendondado.

### Linha 48 a 55: Calculo dos resultados finais
Calcula o total de juros acumulados e os montantes finais para simples e compostos.

### Linha 57 a 66: Exibicao dos resultados finais
Mostra o resumo geral com os valores acumulados e a diferenca entre eles apos o periodo total.

### Linha 68: Mensagem final
Alerta sobre os riscos dos juros compostos em dividas como cartao de credito.

---

# 5. Funcoes Criadas no Programa

## escrevaArrendondado(real valor)
Funcao que exibe um numero com duas casas decimais.
- Calcula a parte inteira do valor.
- Calcula as duas casas decimais multiplicando a parte fracionaria por 100.
- Corrige valores negativos.
- Adiciona um zero a esquerda se necessario.

## potencia(real base, inteiro expoente)
Funcao que simula a operacao de potenciacao.
- Multiplica a base sucessivamente pelo numero de vezes indicado no expoente.

---

# 6. Observacoes Finais
- O programa usa taxas de juros padrao, mas elas podem ser alteradas facilmente.
- Eh importante lembrar que os juros compostos aumentam exponencialmente, enquanto os simples aumentam linearmente.
- Esta simulacao serve como ferramenta educativa e pode ser adaptada para diferentes cenarios financeiros.

---

# 7. Codigo Completo Usado na Simulacao

```
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
```

