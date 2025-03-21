# Trabalho Portugol

---

# Comparador de Juros Simples e Compostos

## **1. Introdução**

Bem-vindo ao comparador de juros simples e compostos! Este programa foi criado para te ajudar a visualizar como uma dívida cresce ao longo do tempo, utilizando duas formas de cálculo de juros: os **juros simples** e os **juros compostos**. Ele calcula mês a mês quanto você pagaria com cada tipo de juros, e mostra como essas duas formas afetam o valor da dívida. 

A ideia é te ajudar a entender como as dívidas funcionam e como os juros compostos, por exemplo, podem ser um grande desafio para as finanças pessoais.

---

## **2. Como os Juros Compostos Afetam as Dívidas no Dia a Dia**

Os **juros compostos** estão por trás de muitos produtos financeiros que usamos no dia a dia. Eles fazem a dívida crescer de forma exponencial, ou seja, vão se acumulando sobre os próprios juros. Isso pode fazer com que uma dívida aparentemente pequena se torne muito maior com o tempo.

### **Onde os Juros Compostos São Comuns:**

- **Cartão de Crédito**: Quando você não paga a fatura completa, a dívida vai crescendo com **juros compostos mensais**. A taxa pode ser alta, chegando a mais de 12% ao mês.
- **Cheque Especial**: Funciona da mesma maneira, com taxas compostas que podem ser muito altas.
- **Empréstimos Mal Planejados**: Se não forem bem planejados, muitos empréstimos têm juros compostos, o que pode fazer você pagar muito mais do que emprestou.

### **Como Podemos Usar Juros Simples a Nosso Favor:**

- **Empréstimos Pessoais com Juros Simples**: São mais fáceis de entender, e o valor da dívida aumenta de forma previsível, sem juros sobre juros.
- **Negociação de Dívidas**: Quando possível, negocie dívidas para que sejam recalculadas com juros simples, evitando surpresas.
- **Planejamento Financeiro**: Compreender a diferença entre juros simples e compostos é essencial para tomar decisões financeiras mais inteligentes.

---

## **3. Como Funciona o Programa**

O programa realiza a simulação de uma dívida com juros simples e compostos e exibe os resultados mês a mês. A estrutura do programa é bem simples e vai te guiar por todo o processo:

1. **Declaração de variáveis**: onde as informações da dívida e as taxas de juros são armazenadas.
2. **Entrada de dados**: o programa solicita que você insira o valor da dívida e o tempo de pagamento.
3. **Cálculo dos juros**: o programa calcula quanto você pagaria com juros simples e compostos, mês a mês.
4. **Exibição dos resultados**: ao final, o programa exibe os valores totais de cada tipo de juros e a diferença entre eles.

---

## **4. Explicação do Código**

### Linha 1: `programa`

Define o início do programa.

### Linha 2: `função início()`

A função "início" é o ponto de partida do programa. Todo programa em Portugol começa aqui.

### Linhas 4 a 10: Declaração de variáveis

Aqui declaramos as variáveis que vamos usar para armazenar os dados:
- **divida**: o valor inicial da dívida.
- **taxa_juros_simples** e **taxa_juros_compostos**: as taxas de juros para simples e compostos.
- **montante_simples** e **montante_composto**: o valor acumulado da dívida com cada tipo de juros.
- **juros_simples** e **juros_compostos**: os juros totais calculados ao final.

### Linhas 12 a 14: Definição das taxas de juros

Aqui, definimos as taxas de juros para simular a média do cartão de crédito no Brasil: 12% ao mês para ambos os tipos de juros.

### Linha 16 a 21: Entrada de dados

O programa solicita que você insira o valor da dívida e o número de meses para o pagamento. Essas informações são usadas para calcular os juros.

### Linha 23 a 26: Cabeçalho da simulação

O programa exibe as taxas de juros e prepara você para a simulação, mostrando o que será calculado.

### Linhas 29 a 30: Inicialização dos montantes

Aqui o programa define o valor inicial da dívida para os cálculos de juros simples e compostos.

### Linhas 32 a 46: Laço de repetição (cálculo mês a mês)

Durante os meses, o programa calcula:
- O valor com **juros simples** (com uma fórmula simples de multiplicação).
- O valor com **juros compostos** (utilizando uma função de potência).
- A diferença entre os dois valores.

Ele vai exibindo os resultados mês a mês, para que você veja claramente a diferença.

### Linha 48 a 55: Cálculo dos resultados finais

Ao final do período, o programa calcula o total de juros pagos em ambos os tipos e o valor final da dívida.

### Linha 57 a 66: Exibição dos resultados finais

Aqui o programa exibe um resumo com os totais de juros pagos e a diferença entre juros compostos e simples, para te ajudar a visualizar como cada tipo de juros impacta no valor final.

### Linha 68: Mensagem final

O programa termina alertando sobre os riscos dos juros compostos, especialmente em dívidas como as de cartão de crédito.

---

## **5. Funções Criadas no Programa**

### `escrevaArrendondado(valor)`

Essa função é usada para exibir os valores de forma bonita, com duas casas decimais. Assim, o número fica mais fácil de ler.

### `potencia(base, expoente)`

Esta função simula o cálculo de potências. Ela é usada para calcular os juros compostos, pois os juros se acumulam exponencialmente.

---

## **6. Observações Finais**

- As taxas de juros usadas são padrão, mas você pode alterá-las facilmente para testar outros cenários.
- Lembre-se: **juros compostos** podem ser perigosos, pois aumentam rapidamente. Já os **juros simples** são mais previsíveis e fáceis de controlar.
- Essa simulação é uma ferramenta educativa e pode ser adaptada para diferentes situações financeiras.

---

## **7. Código Completo**

Aqui está o código completo que você pode usar no seu programa:

```portugol
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
