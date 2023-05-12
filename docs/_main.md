--- 
# See https://github.com/fnaufel/bookdowntemplate01 for more information.

knit: "bookdown::render_book"

title: "Probabilidade e Estatística com R"
description: "Probabilidade e Estatística com R"
author: "Fernando Náufel"
date: "(versão de 12/05/2023)"
lang: 'pt-br'

cover-image: "images/640px-Nightingale-mortality.jpg"

documentclass: "report"
classoption: '11pt'
geometry: 'margin=1in'
bibliography: ['bibliography.bib', 'packages.bib']
link-citations: yes
---



# Apresentação {- #apresentacao}

::: {.rmdcaution latex=1}

**Atenção**

Este material ainda está em construção.

Pode haver mudanças a qualquer momento.

Verifique, no rodapé da página *web* ou na capa do arquivo pdf, a data desta versão.
:::

\newpage


![](images/640px-Nightingale-mortality.jpg){.center}

\vspace{2cm}


Este livro/*site* foi iniciado em 2020, durante a pandemia de COVID-19, quando a Universidade Federal Fluminense (UFF) funcionou em regime de ensino remoto durante mais de um ano. 

Para atender os alunos do curso de Probabilidade e Estatística do curso de graduação em Ciência da Computação da UFF, decidi gravar aulas em vídeo e disponibilizar os arquivos usados nelas. Foram esses arquivos que deram origem a este livro/*site*.

Este livro/*site* foi construído para pessoas que já saibam programar, embora não necessariamente em R.

Para tirar o máximo proveito deste material, você deve fazer o seguinte:

1. Assistir aos vídeos contidos em cada capítulo. A *playlist* completa está em https://www.youtube.com/playlist?list=PL7SRLwLs7ocaV-Y1vrVU3W7mZnnS0qkWV.

1. Instalar o R no seu computador ou abrir uma conta no RStudio Cloud, para poder usar o R *online*. Você encontra instruções para fazer isto no [capítulo de introdução a R](#rintro).

1. Baixar, [neste repositório do Github](https://github.com/fnaufel/probestr), o código-fonte deste livro/*site*, para poder rodar e alterar os exemplos.

1. Seguir os *links* para outras fontes *online* que abordam assuntos que não são cobertos em detalhes neste curso.

1. Fazer os exercícios. Ao longo do tempo, acrescentarei *links* para vídeos explicando as soluções.

::: {.rmdimportant latex=1}

[Se você estiver lendo este material na *web*, você pode clicar nos comandos e funções que aparecem nos blocos de código em R]{.hl} para abrir páginas da documentação sobre eles.

Se você preferir ler este livro em pdf, ou se quiser imprimi-lo, [faça o *download* do arquivo aqui](https://github.com/fnaufel/probestr/blob/master/docs/probestr.pdf).

:::


## Referências recomendadas {- #refrec}

### Em português {-}

* Sillas Gonzaga, *Introdução a R para Visualização e Apresentação de Dados*,
http://sillasgonzaga.com/material/curso_visualizacao/index.html

* Allan Vieira de Castro Quadros, *Introdução à Análise de Dados em R utilizando Tidyverse*, https://allanvc.github.io/book_IADR-T/

* Paulo Felipe de Oliveira, Saulo Guerra, Robert McDonnel, *Ciência de Dados com R – Introdução*, https://cdr.ibpad.com.br/index.html

* Curso R, *Ciência de Dados em R*, https://livro.curso-r.com/


### Em inglês {-}

* Garrett Grolemund, Hadley Wickham, *R for Data Science*, https://r4ds.had.co.nz/

* Chester Ismay, Albert Y. Kim, *A ModernDive into R and the Tidyverse*, https://moderndive.com/


## Exercício {-}

1. Pesquise sobre a imagem do início deste capítulo. Ela foi criada em 1858 por Florence Nightingale.


<!--chapter:end:index.Rmd-->

--- 
knit: "bookdown::render_book"
---



# O Que É Estatística? {#oque}

## Vídeo 1

```{=latex}
\begin{center} \url{https://youtu.be/6Q_XSoLCIpc} \end{center}
```

## Exercícios

1. Você está interessado em estimar a altura de todos os homens da sua faculdade. Para isso, você decide medir as alturas de todos os homens da sua turma de Estatística.

   * Qual é a amostra?
   * Qual é a população?

1. Um instituto de pesquisa entrevista um grupo de $1000$ pessoas, perguntando a cada uma se ela vai votar a favor do candidato $A$ na próxima eleição. Dos entrevistados, $600$ responderam que sim. A proporção $0{,}6$ (ou $60\%$) é uma estatística ou um parâmetro?

1. Você vê alguma diferença entre as cinco situações abaixo? Quais das situações são equivalentes em termos da probabilidade de conseguir $10$ cartas do mesmo naipe?

   a.  Usando um baralho normal, você retira $10$ cartas e registra as cartas retiradas.

   a.  Usando um baralho normal, você repete a seguinte sequência de ações $10$ vezes: retirar uma carta do baralho, registrar a carta retirada e repor a carta no baralho.
   
   a.  Usando uma caixa contendo todas as cartas de $1$ milhão de baralhos reunidos, você retira $10$ cartas e registra as cartas retiradas.
   
   a.  Usando uma caixa contendo todas as cartas de $1$ milhão de baralhos reunidos, você repete a seguinte sequência de ações $10$ vezes: retirar uma carta da caixa, registrar a carta retirada e repor a carta na caixa.

   a.  Usando um baralho *infinito*, você retira $10$ cartas e registra as cartas retiradas.
   
   a.  Usando um baralho *infinito*, você repete a seguinte sequência de ações $10$ vezes: retirar uma carta do baralho, registrar a carta retirada e repor a carta no baralho.

1. Qual a graça dos quadrinhos na Figura \@ref(fig:xkcd-cor), que também [aparecem no vídeo](https://youtu.be/6Q_XSoLCIpc?t=1385)?

    \begin{figure}
    
    {\centering \includegraphics[width=0.9\linewidth]{images/correlation-pt-600} 
    
    }
    
    \caption{(ref:552)}(\#fig:xkcd-cor)
    \end{figure}

1. Qual a graça dos quadrinhos na Figura \@ref(fig:xkcd-blind)?

    \begin{figure}
    
    {\centering \includegraphics[width=0.5\linewidth]{images/double-blind} 
    
    }
    
    \caption{(ref:1462)}(\#fig:xkcd-blind)
    \end{figure}

1. Veja este vídeo sobre o cavalo Hans:

    ```{=latex}
    \begin{center} \url{https://youtu.be/G3VkCmdUfZE} \end{center}
    ```
   Qual a relação entre esta história e a necessidade de duplo cegamento?


(ref:552) http://xkcd.com/552/

(ref:1462) http://xkcd.com/1462/


## Vídeo 2 { #niveis-de-dados }

```{=latex}
\begin{center} \url{https://youtu.be/492VASxlDRo} \end{center}
```

## Exercícios

1. Por que não faz sentido calcular a média dos CEPs de um grupo de pessoas?

1. Uma temperatura de $-40$ graus Celsius é igual a uma temperatura de $-40$ graus Fahrenheit?

1. Uma temperatura de zero graus Celsius é igual a uma temperatura de zero graus Fahrenheit?

1. Uma variação de temperatura de $1$ grau Celsius é igual a uma variação de temperatura de $1$ grau Fahrenheit?

1. Um saldo bancário de zero reais é igual a um saldo bancário de zero dólares?

1. Um produto de $1$ milhão de reais custa o mesmo que um produto de $1$ milhão de dólares?

1. Meses representados por números de $1$ a $12$ são dados de que nível?


<!--chapter:end:o-que-e.Rmd-->

--- 
knit: "bookdown::render_book"
---


# Introdução a R {#rintro}

## Vídeo 1

```{=latex}
\begin{center} \url{https://youtu.be/1kXQDNqm41c} \end{center}
```


## Usando o RStudio

Leia uma introdução ao R e ao RStudio no livro [Ciência de Dados com R](https://www.ibpad.com.br/o-que-fazemos/publicacoes/introducao-ciencia-de-dados-com-r).

Ali, você vai encontrar *exemplos* e **exercícios**.


## RMarkdown

Para ver uma referência sobre a sintaxe do RMarkdown, vá ao menu `Help` do RStudio, escolha `Cheatsheets` e, a seguir, `R Markdown Cheat Sheet` ou `R Markdown Reference Guide`.


## Apresentação

R é várias linguagens em uma:

* R base,

* OO (S3),

* OO (S4),

* Tidyverse (pacote usado para Ciência de Dados e gráficos).


## Tudo é vetor

* Usamos a função `c()` (*concatenate*) para criar vetores:

    
    ```r
    vetor <- c(1, 2, 4, 7, 0, -1)
    vetor
    ```
    
    ```
    ## [1]  1  2  4  7  0 -1
    ```

* Em um vetor, todos os elementos precisam ser do mesmo tipo.

* Mesmo que você use `c(c(...), c(...))`, o vetor criado vai ter um único nível. [Não existem vetores aninhados.]{.hl}

    
    ```r
    v1 <- c(1, 2)
    v2 <- c(3, 4, 5)
    v3 <- c(v1, v2)
    v3
    ```
    
    ```
    ## [1] 1 2 3 4 5
    ```

* Mais adiante, veremos como criar [listas]{.hl}, que podem ter elementos de tipos diferentes e sublistas aninhadas.

* Outras maneiras de criar vetores:

  * O operador `:` constrói sequências:

    
    ```r
    1:10
    ```
    
    ```
    ##  [1]  1  2  3  4  5  6  7  8  9 10
    ```
    
    
    ```r
    10:1
    ```
    
    ```
    ##  [1] 10  9  8  7  6  5  4  3  2  1
    ```
    
    
    ```r
    0.5:10.5
    ```
    
    ```
    ##  [1]  0,5  1,5  2,5  3,5  4,5  5,5  6,5  7,5  8,5  9,5 10,5
    ```
    
    
    ```r
    0.5:10
    ```
    
    ```
    ##  [1] 0,5 1,5 2,5 3,5 4,5 5,5 6,5 7,5 8,5 9,5
    ```
    
  * A função `seq` permite especificar um incremento diferente de $1$ e $-1$:
    
    
    ```r
    seq(1, 10)
    ```
    
    ```
    ##  [1]  1  2  3  4  5  6  7  8  9 10
    ```
    
    
    ```r
    seq(10, 1)
    ```
    
    ```
    ##  [1] 10  9  8  7  6  5  4  3  2  1
    ```
    
    
    ```r
    seq(1, 10, 0.5)
    ```
    
    ```
    ##  [1]  1,0  1,5  2,0  2,5  3,0  3,5  4,0  4,5  5,0  5,5  6,0  6,5  7,0
    ## [14]  7,5  8,0  8,5  9,0  9,5 10,0
    ```

  * A função `rep` cria vetores com elementos repetidos: 
    
    
    ```r
    rep(1, 10)
    ```
    
    ```
    ##  [1] 1 1 1 1 1 1 1 1 1 1
    ```
    
    
    ```r
    rep(c(1, 2), 10)
    ```
    
    ```
    ##  [1] 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2 1 2
    ```
    
    
    ```r
    rep(c(1, 2), each = 10)
    ```
    
    ```
    ##  [1] 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2
    ```
    
    
    ```r
    rep(c(1, 2), c(3, 4))
    ```
    
    ```
    ## [1] 1 1 1 2 2 2 2
    ```

* O número que aparece na saída, entre colchetes, é o índice do primeiro elemento daquela linha:

    
    ```r
    rep(1, 1000)
    ```
    
    ```
    ##    [1] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##   [33] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##   [65] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##   [97] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [129] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [161] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [193] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [225] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [257] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [289] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [321] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [353] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [385] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [417] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [449] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [481] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [513] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [545] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [577] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [609] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [641] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [673] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [705] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [737] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [769] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [801] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [833] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [865] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [897] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [929] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [961] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
    ##  [993] 1 1 1 1 1 1 1 1
    ```

* Vetores começam no índice 1!!!!

* Tudo é vetor:

    
    ```r
    10
    ```
    
    ```
    ## [1] 10
    ```
    
    
    ```r
    is.vector(10)
    ```
    
    ```
    ## [1] TRUE
    ```
    
    
    ```r
    length(10)
    ```
    
    ```
    ## [1] 1
    ```

* O valor `NA` significa [ausência de informação]{.hl}:

    
    ```r
    notas <- c(10, 8, NA, 7, 10)
    notas
    ```
    
    ```
    ## [1] 10  8 NA  7 10
    ```


## Operações com vetores

* Adição e outras operações aritméticas::

    
    ```r
    v3 <- c(10, 20)
    ```
    
    
    ```r
    v1
    ```
    
    ```
    ## [1] 1 2
    ```
    
    ```r
    v2
    ```
    
    ```
    ## [1] 3 4 5
    ```
    
    ```r
    v3
    ```
    
    ```
    ## [1] 10 20
    ```

  * R [recicla]{.hl} o vetor mais curto, mas [avisa quando o comprimento do maior vetor não é múltiplo inteiro do comprimento do menor vetor]{.hl}.

    
    ```r
    v1 + v3
    ```
    
    ```
    ## [1] 11 22
    ```
    
    
    ```r
    v1 + v2
    ```
    
    ```
    ## Warning in v1 + v2: longer object length is not a multiple of shorter
    ## object length
    ```
    
    ```
    ## [1] 4 6 6
    ```

    
    ```r
    v1 <- c(1, 2)
    v4 <- c(3, 4, 5, 6, 7, 8)
    v1 + v4
    ```
    
    ```
    ## [1]  4  6  6  8  8 10
    ```
    
    ```r
    v1 - v4
    ```
    
    ```
    ## [1] -2 -2 -4 -4 -6 -6
    ```
    
    ```r
    v1 * v4
    ```
    
    ```
    ## [1]  3  8  5 12  7 16
    ```
    
    ```r
    v1 / v4
    ```
    
    ```
    ## [1] 0,3333333 0,5000000 0,2000000 0,3333333 0,1428571 0,2500000
    ```

* Funções úteis para vetores:

  * Somar todos os elementos:

    
    ```r
    sum(v4)
    ```
    
    ```
    ## [1] 33
    ```
  
  * O valor `NA` se propaga em operações aritméticas:
  
    
    ```r
    notas
    ```
    
    ```
    ## [1] 10  8 NA  7 10
    ```
    
    
    ```r
    sum(notas)
    ```
    
    ```
    ## [1] NA
    ```
    
  * Para ignorar os valores `NA`, use o argumento `na.rm`:
    
    
    ```r
    sum(notas, na.rm = TRUE)
    ```
    
    ```
    ## [1] 35
    ```
    
  * Média de todos os elementos:
    
    
    ```r
    mean(notas, na.rm = TRUE)
    ```
    
    ```
    ## [1] 8,75
    ```
    
    
    ```r
    sum(notas, na.rm = TRUE) / 4
    ```
    
    ```
    ## [1] 8,75
    ```


## Indexação

* Com um valor inteiro:

    
    ```r
    v5 <- 1:50 * 4
    v5
    ```
    
    ```
    ##  [1]   4   8  12  16  20  24  28  32  36  40  44  48  52  56  60  64
    ## [17]  68  72  76  80  84  88  92  96 100 104 108 112 116 120 124 128
    ## [33] 132 136 140 144 148 152 156 160 164 168 172 176 180 184 188 192
    ## [49] 196 200
    ```
    
    ```r
    v5[10]
    ```
    
    ```
    ## [1] 40
    ```
    
* Com um vetor de inteiros:    
    
    
    ```r
    v5[1:10]
    ```
    
    ```
    ##  [1]  4  8 12 16 20 24 28 32 36 40
    ```
    
    
    ```r
    v5[c(2, 10, 13, 30)]
    ```
    
    ```
    ## [1]   8  40  52 120
    ```
    
    
    ```r
    v5[seq(2, 50, 2)]
    ```
    
    ```
    ##  [1]   8  16  24  32  40  48  56  64  72  80  88  96 104 112 120 128
    ## [17] 136 144 152 160 168 176 184 192 200
    ```
    
* [Com um vetor de booleanos, os elementos indexados por `TRUE` são selecionados:]{.hl}

    
    ```r
    v4
    ```
    
    ```
    ## [1] 3 4 5 6 7 8
    ```
    
    
    ```r
    v4[c(TRUE, TRUE, FALSE, FALSE, TRUE, FALSE)]
    ```
    
    ```
    ## [1] 3 4 7
    ```

* Uma condição produz um vetor de booleanos:
    
    
    ```r
    v4 > 5
    ```
    
    ```
    ## [1] FALSE FALSE FALSE  TRUE  TRUE  TRUE
    ```
    
* Logo, podemos indexar com uma condição:

    
    ```r
    v4[ v4 > 5 ]
    ```
    
    ```
    ## [1] 6 7 8
    ```
    
    
    ```r
    v4[ v4 %% 2 != 0 ]
    ```
    
    ```
    ## [1] 3 5 7
    ```
    
    
    ```r
    notas[!is.na(notas)]
    ```
    
    ```
    ## [1] 10  8  7 10
    ```

* Para especificar os elementos a [não]{.hl} selecionar, use [índices negativos]{.hl}.

    
    ```r
    v5
    ```
    
    ```
    ##  [1]   4   8  12  16  20  24  28  32  36  40  44  48  52  56  60  64
    ## [17]  68  72  76  80  84  88  92  96 100 104 108 112 116 120 124 128
    ## [33] 132 136 140 144 148 152 156 160 164 168 172 176 180 184 188 192
    ## [49] 196 200
    ```
    
    
    ```r
    v5[-1]
    ```
    
    ```
    ##  [1]   8  12  16  20  24  28  32  36  40  44  48  52  56  60  64  68
    ## [17]  72  76  80  84  88  92  96 100 104 108 112 116 120 124 128 132
    ## [33] 136 140 144 148 152 156 160 164 168 172 176 180 184 188 192 196
    ## [49] 200
    ```
    
    
    ```r
    v5[-c(1, 4, 20)]
    ```
    
    ```
    ##  [1]   8  12  20  24  28  32  36  40  44  48  52  56  60  64  68  72
    ## [17]  76  84  88  92  96 100 104 108 112 116 120 124 128 132 136 140
    ## [33] 144 148 152 156 160 164 168 172 176 180 184 188 192 196 200
    ```


## Vídeo 2

```{=latex}
\begin{center} \url{https://youtu.be/3GEc1oiKDrU} \end{center}
```


## Simular lançamentos de dados

* Vamos criar um dado de $6$ lados. Basta um vetor:

    
    ```r
    (dado <- 1:6)
    ```
    
    ```
    ## [1] 1 2 3 4 5 6
    ```

* Para lançar este dado uma vez, usamos `sample`:

    
    ```r
    sample(dado, 1)
    ```
    
    ```
    ## [1] 6
    ```

* Para lançar o dado várias vezes:

    
    ```r
    n <- 6
    sample(dado, n, replace = TRUE)
    ```
    
    ```
    ## [1] 3 3 2 4 2 6
    ```

* Observe que, para permitir que o mesmo valor apareça mais de uma vez, precisamos usar `replace = TRUE` --- a amostragem será feita com reposição.

* Uma função para retornar a soma de 2 dados:

    
    ```r
    lancar2 <- function() {
      
      dado <- 1:6
      lancamentos <- sample(dado, size = 2, replace = TRUE)
      sum(lancamentos)
      
    }
    ```
    
    
    ```r
    lancar2()
    ```
    
    ```
    ## [1] 7
    ```

* Vamos generalizar a função:

  * O número de lados do dado é passado como argumento.

  * A quantidade de dados é passada como argumento.

    
    ```r
    lancar <- function(n = 2, k = 6) {
      
      dado <- 1:k
      lancamentos <- sample(dado, size = n, replace = TRUE)
      sum(lancamentos)
      
    }
    ```
    
    
    ```r
    lancar()
    ```
    
    ```
    ## [1] 7
    ```
    
    
    ```r
    lancar(n = 4, k = 10)
    ```
    
    ```
    ## [1] 14
    ```

* Vamos lançar os $2$ dados $10$ mil vezes, usando a função `replicate`:

    
    ```r
    resultados <- replicate(1e4, lancar())
    ```


## Visualização

* A função `qplot`, do pacote `tidyverse`, produz um gráfico adequado aos argumentos recebidos --- aqui, um histograma:

    
    ```r
    qplot(resultados, bins = 11)
    ```
    
    ```
    ## Warning: `qplot()` was deprecated in ggplot2 3.4.0.
    ## This warning is displayed once every 8 hours.
    ## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was generated.
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/qplot-1} \end{center}

* Em um [capítulo sobre visualização](#viz), você vai aprender a configurar melhor a aparência de gráficos como este.


## Dados viciados

* Vamos modificar a função `lancar` para receber um [vetor com as probabilidades dos lados]{.hl}:

    
    ```r
    lancar <- function(
      qtde = 2, 
      lados = 6, 
      probs = rep(1/lados, lados)
    ) {
      
      dado <- 1:lados
      resultados <- sample(
        dado, 
        size = qtde, 
        replace = TRUE, 
        prob = probs
      )
      sum(resultados)
      
    }
    ```

* Lançando dados viciados:

    
    ```r
    resultados <- replicate(1e4, lancar(probs = c(1/2, rep(1/10, 5))))
    ```
    
    
    ```r
    qplot(resultados, bins = 11)
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/plot-viciados-1} \end{center}


## Exercícios

1. Para criar sua conta no RStudio Cloud, acesse https://rstudio.cloud/.

1. Se você preferir instalar o R no seu computador, acesse

   * https://cran.r-project.org/ para baixar e instalar o R, e
   
   * https://rstudio.com/products/rstudio/download/ para baixar e instalar o RStudio, um IDE específico para R.
   
1. Abra o RStudio Cloud ou o seu RStudio instalado localmente.

1. Crie um novo projeto. [Sempre trabalhe em projetos para ter seus arquivos organizados.]{.hl}

1. Para instalar o [`swirl` (pacote do R para exercícios interativos)](https://swirlstats.com/), execute o seguinte comando no console do RStudio:

    
    ```r
    install.packages("swirl")
    ```

1. Para instalar os exercícios de introdução a R, execute os seguintes comandos no console do RStudio:

    
    ```r
    library(swirl)
    install_course_github('fnaufel', 'introR')
    ```

1. Mude o idioma para português e execute o `swirl`.

    
    ```r
    select_language('portuguese', append_rprofile = TRUE)
    swirl()
    ```

1. Na primeira execução, você vai precisar se identificar (qualquer nome serve). Com essa identificação, o `swirl` vai registrar o seu progresso nas lições.

1. No `swirl`, as perguntas são mostradas no console. Você também deve responder no console. 

1. Às vezes, um *script* será aberto no editor de textos para que você complete um programa. Quando seu programa estiver pronto, salve o arquivo e digite `submit()` no console para o `swirl` processar o *script*.

1. O `swirl` dá instruções claras no console. Na dúvida, digite `info()` no *prompt* do R (`>`). 

1. Se, em vez do *prompt* do R, o console mostrar reticências (`...`), tecle *Enter*.

1. Se nada funcionar, tecle *ESC*.
   
1. Para sair do `swirl()`, digite `bye()` no *prompt* do R.

1. Para voltar para os exercícios, digite

    
    ```r
    library(swirl)
    swirl()
    ```

1. Se, quando você tentar instalar os exercícios, acontecer um erro, desinstale todos os cursos com os comandos

    
    ```r
    library(swirl)
    uninstall_all_courses()
    ```
    
   e tente instalar os exercícios novamente.
   

<!--chapter:end:r-intro.Rmd-->

--- 
knit: "bookdown::render_book"
---


# Introdução ao `tidyverse`

::: {.rmdtip latex=1}

Busque mais informações sobre os pacotes que compõem o `tidyverse` [nas referências recomendadas](#refrec).

:::


## Criando uma *tibble*

* Uma *tibble* é uma tabela retangular.

* [Cada coluna é um vetor]{.hl}:

    
    ```r
    cores <- tibble(
      pessoa = c('João', 'Maria', 'Pedro', 'Ana'),
      'cor favorita' = c('azul', 'rosa', 'preto', 'branco')
    )
    ```

  
  ```r
  cores
  ```
  
  ```
  ## # A tibble: 4 x 2
  ##   pessoa `cor favorita`
  ##   <chr>  <chr>         
  ## 1 João   azul          
  ## 2 Maria  rosa          
  ## 3 Pedro  preto         
  ## 4 Ana    branco
  ```

* Isto é um pouco diferente da maneira como estamos acostumados a ver tabelas (como uma coleção de linhas, em vez de uma coleção de colunas).

* A função `tribble` permite a entrada de forma mais natural, linha a linha. [Lembre-se de usar `~` antes dos nomes das colunas.]{.hl}

    
    ```r
    cores <- tribble(
      ~pessoa, ~'cor favorita',
       "João",          "azul",
      "Maria",          "rosa",
      "Pedro",         "preto",
        "Ana",        "branco"
    )
    ```

  
  ```r
  cores
  ```
  
  ```
  ## # A tibble: 4 x 2
  ##   pessoa `cor favorita`
  ##   <chr>  <chr>         
  ## 1 João   azul          
  ## 2 Maria  rosa          
  ## 3 Pedro  preto         
  ## 4 Ana    branco
  ```

  ::: {.rmdcaution latex=1}
  
  Mesmo que você crie uma *tibble* linha a linha, o R vai continuar tratando sua *tibble* como uma coleção de colunas.
  
  É importante lembrar disto para entender a forma como R manipula estas tabelas.
  
  :::

* Se uma coluna não puder ser armazenada em um vetor, a coluna será uma lista (com vetores como elementos):

    
    ```r
    cores <- tibble(
      pessoa = c('João', 'Maria', 'Pedro', 'Ana'),
      'cor favorita' = list(
        c('azul', 'roxo'),
        c('rosa', 'magenta'),
        NA,
        'branco'
      )
    )
    ```

  
  ```r
  cores
  ```
  
  ```
  ## # A tibble: 4 x 2
  ##   pessoa `cor favorita`
  ##   <chr>  <list>        
  ## 1 João   <chr [2]>     
  ## 2 Maria  <chr [2]>     
  ## 3 Pedro  <lgl [1]>     
  ## 4 Ana    <chr [1]>
  ```

* Use `View()` para examinar interativamente o conteúdo de uma coluna-lista:

    
    ```r
    cores %>% View()
    ```

## Operador de *pipe* (`%>%`)

* O `tidyverse` inclui o pacote `magrittr`, que contém o operador `%>%`, chamado *pipe*.[^trocadilho]

[^trocadilho]: Por que o nome do pacote e o nome do operador formam um trocadilho?

* A idéia é facilitar a leitura de [composições de funções]{.hl}. O código

    
    ```r
    y <- h(g(f(x)))
    ```

  pode ser escrito como
  
    
    ```r
    y <- x %>% f() %>% g() %>% h()
    ```

* Esta segunda versão é mais fiel à ordem em que as operações acontecem.

* Na verdade, R tem um operador de [atribuição para a direita]{.hl}, mas poucas pessoas recomendam usá-lo:

    
    ```r
    x %>% f() %>% g() %>% h() -> y
    ```

* Se `f`, `g` e `h` forem funções de um argumento só, os parênteses podem ser omitidos:

    
    ```r
    y <- x %>% f %>% g %>% h
    ```

* Se a função `f` tiver outros argumentos, escreva-os normalmente na chamada a `f`:

    
    ```r
    y <- x %>% mean(na.rm = TRUE)
    ```

* O *pipe* `EXP %>% f(...)` sempre insere o resultado da expressão `EXP` como o [primeiro argumento da função `f`]{.hl}.

* Se você precisar que o resultado da expressão `EXP` seja inserido em outra posição na lista de argumentos de `f`, use um ponto "`.`" para isso:

    
    ```r
    x %>% consultar(df, .)
    ```
  
  equivale a

    
    ```r
    consultar(df, x)
    ```
  

## Formato *tidy*

* Nossa última versão da *tibble* `cores` é um pouco mais complexa do que deveria ser:

  
  ```r
  cores
  ```
  
  ```
  ## # A tibble: 4 x 2
  ##   pessoa `cor favorita`
  ##   <chr>  <list>        
  ## 1 João   <chr [2]>     
  ## 2 Maria  <chr [2]>     
  ## 3 Pedro  <lgl [1]>     
  ## 4 Ana    <chr [1]>
  ```

* O formato *tidy* exige que 

  1. [Cada linha]{.hl} da *tibble* corresponda a uma [observação]{.hl} sobre um indivíduo,
  
  1. [Cada coluna]{.hl} corresponda a [uma variável observada]{.hl}, e
  
  1. [Cada célula]{.hl} contenha [um valor]{.hl} da variável.
  
* Na *tibble* `cores`, a primeira e a segunda exigências são satisfeitas, mas a terceira não, pois algumas células contém valores múltiplos.

* A *tibble* não está no formato *tidy*.

* Podemos "extrair" estes vetores "aninhados" usando o comando `unnest`, do pacote `tidyr`:

    
    ```r
    cores <- cores %>% 
      unnest(`cor favorita`)
    ```
    
  
  ```r
  cores
  ```
  
  ```
  ## # A tibble: 6 x 2
  ##   pessoa `cor favorita`
  ##   <chr>  <chr>         
  ## 1 João   azul          
  ## 2 João   roxo          
  ## 3 Maria  rosa          
  ## 4 Maria  magenta       
  ## 5 Pedro  <NA>          
  ## 6 Ana    branco
  ```

* [A maioria das funções do `tidyverse` exige que as *tibbles* estejam neste formato *tidy*.]{.hl}

* Um exemplo mais complexo é o *dataset* `billboard`, com as seguintes colunas (para cada música que estava no *top 100* da Billboard no ano de $2000$):

  * Nome do artista ou banda;
  
  * Nome da música;
  
  * Data em que a música entrou no *top 100* da Billboard;
  
  * Para cada uma das $76$ semanas seguintes, a posição da música no *top 100*.

    
    ```r
    billboard %>% glimpse()
    ```
    
    ```
    ## Rows: 317
    ## Columns: 79
    ## $ artist       <chr> "2 Pac", "2Ge+her", "3 Doors Down", "3 Doors Dow~
    ## $ track        <chr> "Baby Don't Cry (Keep...", "The Hardest Part Of ~
    ## $ date.entered <date> 2000-02-26, 2000-09-02, 2000-04-08, 2000-10-21,~
    ## $ wk1          <dbl> 87, 91, 81, 76, 57, 51, 97, 84, 59, 76, 84, 57, ~
    ## $ wk2          <dbl> 82, 87, 70, 76, 34, 39, 97, 62, 53, 76, 84, 47, ~
    ## $ wk3          <dbl> 72, 92, 68, 72, 25, 34, 96, 51, 38, 74, 75, 45, ~
    ## $ wk4          <dbl> 77, NA, 67, 69, 17, 26, 95, 41, 28, 69, 73, 29, ~
    ## $ wk5          <dbl> 87, NA, 66, 67, 17, 26, 100, 38, 21, 68, 73, 23,~
    ## $ wk6          <dbl> 94, NA, 57, 65, 31, 19, NA, 35, 18, 67, 69, 18, ~
    ## $ wk7          <dbl> 99, NA, 54, 55, 36, 2, NA, 35, 16, 61, 68, 11, 2~
    ## $ wk8          <dbl> NA, NA, 53, 59, 49, 2, NA, 38, 14, 58, 65, 9, 17~
    ## $ wk9          <dbl> NA, NA, 51, 62, 53, 3, NA, 38, 12, 57, 73, 9, 17~
    ## $ wk10         <dbl> NA, NA, 51, 61, 57, 6, NA, 36, 10, 59, 83, 11, 1~
    ## $ wk11         <dbl> NA, NA, 51, 61, 64, 7, NA, 37, 9, 66, 92, 1, 17,~
    ## $ wk12         <dbl> NA, NA, 51, 59, 70, 22, NA, 37, 8, 68, NA, 1, 3,~
    ## $ wk13         <dbl> NA, NA, 47, 61, 75, 29, NA, 38, 6, 61, NA, 1, 3,~
    ## $ wk14         <dbl> NA, NA, 44, 66, 76, 36, NA, 49, 1, 67, NA, 1, 7,~
    ## $ wk15         <dbl> NA, NA, 38, 72, 78, 47, NA, 61, 2, 59, NA, 4, 10~
    ## $ wk16         <dbl> NA, NA, 28, 76, 85, 67, NA, 63, 2, 63, NA, 8, 17~
    ## $ wk17         <dbl> NA, NA, 22, 75, 92, 66, NA, 62, 2, 67, NA, 12, 2~
    ## $ wk18         <dbl> NA, NA, 18, 67, 96, 84, NA, 67, 2, 71, NA, 22, 2~
    ## $ wk19         <dbl> NA, NA, 18, 73, NA, 93, NA, 83, 3, 79, NA, 23, 2~
    ## $ wk20         <dbl> NA, NA, 14, 70, NA, 94, NA, 86, 4, 89, NA, 43, 4~
    ## $ wk21         <dbl> NA, NA, 12, NA, NA, NA, NA, NA, 5, NA, NA, 44, 4~
    ## $ wk22         <dbl> NA, NA, 7, NA, NA, NA, NA, NA, 5, NA, NA, NA, 50~
    ## $ wk23         <dbl> NA, NA, 6, NA, NA, NA, NA, NA, 6, NA, NA, NA, NA~
    ## $ wk24         <dbl> NA, NA, 6, NA, NA, NA, NA, NA, 9, NA, NA, NA, NA~
    ## $ wk25         <dbl> NA, NA, 6, NA, NA, NA, NA, NA, 13, NA, NA, NA, N~
    ## $ wk26         <dbl> NA, NA, 5, NA, NA, NA, NA, NA, 14, NA, NA, NA, N~
    ## $ wk27         <dbl> NA, NA, 5, NA, NA, NA, NA, NA, 16, NA, NA, NA, N~
    ## $ wk28         <dbl> NA, NA, 4, NA, NA, NA, NA, NA, 23, NA, NA, NA, N~
    ## $ wk29         <dbl> NA, NA, 4, NA, NA, NA, NA, NA, 22, NA, NA, NA, N~
    ## $ wk30         <dbl> NA, NA, 4, NA, NA, NA, NA, NA, 33, NA, NA, NA, N~
    ## $ wk31         <dbl> NA, NA, 4, NA, NA, NA, NA, NA, 36, NA, NA, NA, N~
    ## $ wk32         <dbl> NA, NA, 3, NA, NA, NA, NA, NA, 43, NA, NA, NA, N~
    ## $ wk33         <dbl> NA, NA, 3, NA, NA, NA, NA, NA, NA, NA, NA, NA, N~
    ## $ wk34         <dbl> NA, NA, 3, NA, NA, NA, NA, NA, NA, NA, NA, NA, N~
    ## $ wk35         <dbl> NA, NA, 4, NA, NA, NA, NA, NA, NA, NA, NA, NA, N~
    ## $ wk36         <dbl> NA, NA, 5, NA, NA, NA, NA, NA, NA, NA, NA, NA, N~
    ## $ wk37         <dbl> NA, NA, 5, NA, NA, NA, NA, NA, NA, NA, NA, NA, N~
    ## $ wk38         <dbl> NA, NA, 9, NA, NA, NA, NA, NA, NA, NA, NA, NA, N~
    ## $ wk39         <dbl> NA, NA, 9, NA, NA, NA, NA, NA, NA, NA, NA, NA, N~
    ## $ wk40         <dbl> NA, NA, 15, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk41         <dbl> NA, NA, 14, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk42         <dbl> NA, NA, 13, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk43         <dbl> NA, NA, 14, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk44         <dbl> NA, NA, 16, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk45         <dbl> NA, NA, 17, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk46         <dbl> NA, NA, 21, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk47         <dbl> NA, NA, 22, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk48         <dbl> NA, NA, 24, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk49         <dbl> NA, NA, 28, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk50         <dbl> NA, NA, 33, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk51         <dbl> NA, NA, 42, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk52         <dbl> NA, NA, 42, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk53         <dbl> NA, NA, 49, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk54         <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk55         <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk56         <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk57         <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk58         <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk59         <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk60         <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk61         <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk62         <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk63         <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk64         <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk65         <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk66         <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk67         <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk68         <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk69         <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk70         <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk71         <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk72         <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk73         <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk74         <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk75         <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ## $ wk76         <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, ~
    ```

* Vamos renomear as colunas:

    
    ```r
    bb <- billboard %>% 
      rename(
        artista = artist,
        musica = track,
        entrou = date.entered
      )
    ```
  
  
  ```r
  bb %>% head()
  ```
  
  ```
  ## # A tibble: 6 x 79
  ##   artista   musica entrou       wk1   wk2   wk3   wk4   wk5   wk6   wk7
  ##   <chr>     <chr>  <date>     <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
  ## 1 2 Pac     Baby ~ 2000-02-26    87    82    72    77    87    94    99
  ## 2 2Ge+her   The H~ 2000-09-02    91    87    92    NA    NA    NA    NA
  ## 3 3 Doors ~ Krypt~ 2000-04-08    81    70    68    67    66    57    54
  ## 4 3 Doors ~ Loser  2000-10-21    76    76    72    69    67    65    55
  ## 5 504 Boyz  Wobbl~ 2000-04-15    57    34    25    17    17    31    36
  ## 6 98^0      Give ~ 2000-08-19    51    39    34    26    26    19     2
  ## # i 69 more variables: wk8 <dbl>, wk9 <dbl>, wk10 <dbl>, wk11 <dbl>,
  ## #   wk12 <dbl>, wk13 <dbl>, wk14 <dbl>, wk15 <dbl>, wk16 <dbl>,
  ## #   wk17 <dbl>, wk18 <dbl>, wk19 <dbl>, wk20 <dbl>, wk21 <dbl>,
  ## #   wk22 <dbl>, wk23 <dbl>, wk24 <dbl>, wk25 <dbl>, wk26 <dbl>,
  ## #   wk27 <dbl>, wk28 <dbl>, wk29 <dbl>, wk30 <dbl>, wk31 <dbl>,
  ## #   wk32 <dbl>, wk33 <dbl>, wk34 <dbl>, wk35 <dbl>, wk36 <dbl>,
  ## #   wk37 <dbl>, wk38 <dbl>, wk39 <dbl>, wk40 <dbl>, wk41 <dbl>, ...
  ```

* [O que é uma observação]{.hl} neste conjunto de dados?

  [A posição, em uma semana, de uma música]{.hl} que esteve no *top* $100$ da *Billboard* durante o ano *2000*.
  
* [Quais são as variáveis]{.hl} que qualificam cada observação?

  * O artista,
  
  * O título da música,
  
  * A posiçao da música no *top* $100$ da *Billboard* em cada uma das $76$ semanas depois que ela entrou na lista.
  
* Este último item é complexo, e o criador da *tibble* decidiu criar uma coluna por semana.

* [Uma decisão ruim, pois existe informação embutida nos nomes das colunas.]{.hl} A coluna `wk68` corresponde à posição da música na semana $68$ após ela entrar na lista, [mas o número da semana só aparece no nome da coluna]{.hl}!

* Isto [nunca]{.hl} deve acontecer. [A informação deve sempre estar nas células.]{.hl}

* Vamos simplificar as coisas criando duas colunas:

  * `semana`, com o número da semana; perceba que esta informação vem dos nomes das colunas,
  
  * `pos`, com a posição da música naquela semana; esta informação vem das células.
  
* A *tibble*, que antes era larga, [vai ser mais estreita e mais longa]{.hl}.

* A função `pivot_longer`, do pacote `tidyr`, vai fazer o trabalho --- inclusive extraindo os números das semanas dos nomes das colunas:

    
    ```r
    bb_tidy <- bb %>% 
      pivot_longer(
        wk1:wk76,
        names_to = 'semana',
        names_prefix = 'wk',
        names_transform = list(
          semana = as.integer
        ),
        values_to = 'pos'
      )
    ```
    
  
  ```r
  bb_tidy
  ```
  
  ```
  ## # A tibble: 24.092 x 5
  ##   artista musica                  entrou     semana   pos
  ##   <chr>   <chr>                   <date>      <int> <dbl>
  ## 1 2 Pac   Baby Don't Cry (Keep... 2000-02-26      1    87
  ## 2 2 Pac   Baby Don't Cry (Keep... 2000-02-26      2    82
  ## 3 2 Pac   Baby Don't Cry (Keep... 2000-02-26      3    72
  ## 4 2 Pac   Baby Don't Cry (Keep... 2000-02-26      4    77
  ## 5 2 Pac   Baby Don't Cry (Keep... 2000-02-26      5    87
  ## 6 2 Pac   Baby Don't Cry (Keep... 2000-02-26      6    94
  ## # i 24.086 more rows
  ```

* O R só mostra, por *default*, as $1000$ primeiras linhas de uma *tibble*.

* Na verdade, o número de linhas da tabela original era

    
    ```r
    bb %>% nrow()
    ```
    
    ```
    ## [1] 317
    ```

* O número de linhas, depois de `pivot_longer`, ficou:

    
    ```r
    bb_tidy %>% nrow()
    ```
    
    ```
    ## [1] 24092
    ```

* Existem linhas onde `pos` tem o valor `NA`. São resultado da organização original dos dados, onde o `NA` indicava que a música não estava no *top* $100$ naquela semana.

* No novo formato, a ausência da linha com aquele número de semana já basta para indicar isto. Então, vamos eliminar as linhas onde `pos` é `NA`.

* A função `filter` [mantém]{.hl} as linhas que [satisfazem]{.hl} a condição dada; por isso, a condição é "`pos` não é `NA`":

    
    ```r
    bb_tidy <- bb_tidy %>% 
      filter(!is.na(pos))
    ```
    
  
  ```r
  bb_tidy
  ```
  
  ```
  ## # A tibble: 5.307 x 5
  ##   artista musica                  entrou     semana   pos
  ##   <chr>   <chr>                   <date>      <int> <dbl>
  ## 1 2 Pac   Baby Don't Cry (Keep... 2000-02-26      1    87
  ## 2 2 Pac   Baby Don't Cry (Keep... 2000-02-26      2    82
  ## 3 2 Pac   Baby Don't Cry (Keep... 2000-02-26      3    72
  ## 4 2 Pac   Baby Don't Cry (Keep... 2000-02-26      4    77
  ## 5 2 Pac   Baby Don't Cry (Keep... 2000-02-26      5    87
  ## 6 2 Pac   Baby Don't Cry (Keep... 2000-02-26      6    94
  ## # i 5.301 more rows
  ```

* O número de linhas ficou  

    
    ```r
    bb_tidy %>% nrow()
    ```
    
    ```
    ## [1] 5307
    ```


### Exercícios

* Todas as semanas deste conjunto de dados são do ano $2000$?

* Qual é o tipo do [primeiro]{.hl} argumento da função `filter()`?


## Manipulando os dados

### Criando novas colunas: `mutate`, `transmute`

* O *data frame*^[Considere *data frame* como sinônimo de *tibble*. Na verdade, *tibbles* formam um superconjunto de *data frames*: todo *data frame* é uma *tibble*, mas nem toda *tibble* é um *data frame*.] `cars` tem dados (de $1920$!) sobre as distâncias de frenagem (em pés) de um carro viajando a diversas velocidades (em milhas por hora):

  
  ```r
  cars
  ```
  
  ```
  ## # A tibble: 50 x 2
  ##   speed  dist
  ##   <dbl> <dbl>
  ## 1     4     2
  ## 2     4    10
  ## 3     7     4
  ## 4     7    22
  ## 5     8    16
  ## 6     9    10
  ## # i 44 more rows
  ```

* Vamos criar colunas novas com os valores convertidos para km/h e metros; além disso, uma coluna com a taxa de frenagem:

  
  ```r
  cars %>% 
    mutate(
      velocidade = speed * 1.6,
      distancia = dist * .33,
      taxa = velocidade / distancia
    )
  ```
  
  ```
  ## # A tibble: 50 x 5
  ##   speed  dist velocidade distancia  taxa
  ##   <dbl> <dbl>      <dbl>     <dbl> <dbl>
  ## 1     4     2        6.4      0.66  9.70
  ## 2     4    10        6.4      3.3   1.94
  ## 3     7     4       11.2      1.32  8.48
  ## 4     7    22       11.2      7.26  1.54
  ## 5     8    16       12.8      5.28  2.42
  ## 6     9    10       14.4      3.3   4.36
  ## # i 44 more rows
  ```

* Perceba que as colunas antigas continuam lá. [Se quiser manter apenas as colunas novas, use `transmute`]{.hl}:

  
  ```r
  cars %>% 
    transmute(
      velocidade = speed * 1.6,
      distancia = dist * .33,
      taxa = velocidade / distancia
    )
  ```
  
  ```
  ## # A tibble: 50 x 3
  ##   velocidade distancia  taxa
  ##        <dbl>     <dbl> <dbl>
  ## 1        6.4      0.66  9.70
  ## 2        6.4      3.3   1.94
  ## 3       11.2      1.32  8.48
  ## 4       11.2      7.26  1.54
  ## 5       12.8      5.28  2.42
  ## 6       14.4      3.3   4.36
  ## # i 44 more rows
  ```

* Ou use o argumento `.keep` de `mutate` para escolher com mais precisão. Veja a ajuda de `mutate`.


### Selecionando colunas: `select`, `distinct`, `pull`

* Vamos voltar à nossa *tibble* dos *top* $100$ da *Billboard*.

* Para ver só a coluna de artistas:

  
  ```r
  bb_tidy %>% 
    select(artista)
  ```
  
  ```
  ## # A tibble: 5.307 x 1
  ##   artista
  ##   <chr>  
  ## 1 2 Pac  
  ## 2 2 Pac  
  ## 3 2 Pac  
  ## 4 2 Pac  
  ## 5 2 Pac  
  ## 6 2 Pac  
  ## # i 5.301 more rows
  ```

* Para eliminar as repetições:

  
  ```r
  bb_tidy %>% 
    select(artista) %>% 
    distinct()
  ```
  
  ```
  ## # A tibble: 228 x 1
  ##   artista     
  ##   <chr>       
  ## 1 2 Pac       
  ## 2 2Ge+her     
  ## 3 3 Doors Down
  ## 4 504 Boyz    
  ## 5 98^0        
  ## 6 A*Teens     
  ## # i 222 more rows
  ```

* Para ver artistas e músicas:

  
  ```r
  bb_tidy %>% 
    select(artista, musica) %>% 
    distinct()
  ```
  
  ```
  ## # A tibble: 317 x 2
  ##   artista      musica                 
  ##   <chr>        <chr>                  
  ## 1 2 Pac        Baby Don't Cry (Keep...
  ## 2 2Ge+her      The Hardest Part Of ...
  ## 3 3 Doors Down Kryptonite             
  ## 4 3 Doors Down Loser                  
  ## 5 504 Boyz     Wobble Wobble          
  ## 6 98^0         Give Me Just One Nig...
  ## # i 311 more rows
  ```

* Para especificar colunas [a não mostrar]{.hl}, use o sinal de menos "`-`":

  
  ```r
  bb_tidy %>% 
    select(-c(entrou, semana, pos))
  ```
  
  ```
  ## # A tibble: 5.307 x 2
  ##   artista musica                 
  ##   <chr>   <chr>                  
  ## 1 2 Pac   Baby Don't Cry (Keep...
  ## 2 2 Pac   Baby Don't Cry (Keep...
  ## 3 2 Pac   Baby Don't Cry (Keep...
  ## 4 2 Pac   Baby Don't Cry (Keep...
  ## 5 2 Pac   Baby Don't Cry (Keep...
  ## 6 2 Pac   Baby Don't Cry (Keep...
  ## # i 5.301 more rows
  ```

* Para [extrair uma coluna na forma de vetor]{.hl} (`unique` é uma função do R base, aplicável a vetores):

  
  ```r
  bb_tidy %>% 
    pull(artista) %>% 
    unique()
  ```
  
  ```
  ##   [1] "2 Pac"                          "2Ge+her"                       
  ##   [3] "3 Doors Down"                   "504 Boyz"                      
  ##   [5] "98^0"                           "A*Teens"                       
  ##   [7] "Aaliyah"                        "Adams, Yolanda"                
  ##   [9] "Adkins, Trace"                  "Aguilera, Christina"           
  ##  [11] "Alice Deejay"                   "Allan, Gary"                   
  ##  [13] "Amber"                          "Anastacia"                     
  ##  [15] "Anthony, Marc"                  "Avant"                         
  ##  [17] "BBMak"                          "Backstreet Boys, The"          
  ##  [19] "Badu, Erkyah"                   "Baha Men"                      
  ##  [21] "Barenaked Ladies"               "Beenie Man"                    
  ##  [23] "Before Dark"                    "Bega, Lou"                     
  ##  [25] "Big Punisher"                   "Black Rob"                     
  ##  [27] "Black, Clint"                   "Blaque"                        
  ##  [29] "Blige, Mary J."                 "Blink-182"                     
  ##  [31] "Bloodhound Gang"                "Bon Jovi"                      
  ##  [33] "Braxton, Toni"                  "Brock, Chad"                   
  ##  [35] "Brooks & Dunn"                  "Brooks, Garth"                 
  ##  [37] "Byrd, Tracy"                    "Cagle, Chris"                  
  ##  [39] "Cam'ron"                        "Carey, Mariah"                 
  ##  [41] "Carter, Aaron"                  "Carter, Torrey"                
  ##  [43] "Changing Faces"                 "Chesney, Kenny"                
  ##  [45] "Clark Family Experience"        "Clark, Terri"                  
  ##  [47] "Common"                         "Counting Crows"                
  ##  [49] "Creed"                          "Cyrus, Billy Ray"              
  ##  [51] "D'Angelo"                       "DMX"                           
  ##  [53] "Da Brat"                        "Davidson, Clay"                
  ##  [55] "De La Soul"                     "Destiny's Child"               
  ##  [57] "Diffie, Joe"                    "Dion, Celine"                  
  ##  [59] "Dixie Chicks, The"              "Dr. Dre"                       
  ##  [61] "Drama"                          "Dream"                         
  ##  [63] "Eastsidaz, The"                 "Eiffel 65"                     
  ##  [65] "Elliott, Missy \"Misdemeanor\"" "Eminem"                        
  ##  [67] "En Vogue"                       "Estefan, Gloria"               
  ##  [69] "Evans, Sara"                    "Eve"                           
  ##  [71] "Everclear"                      "Fabian, Lara"                  
  ##  [73] "Fatboy Slim"                    "Filter"                        
  ##  [75] "Foo Fighters"                   "Fragma"                        
  ##  [77] "Funkmaster Flex"                "Ghostface Killah"              
  ##  [79] "Gill, Vince"                    "Gilman, Billy"                 
  ##  [81] "Ginuwine"                       "Goo Goo Dolls"                 
  ##  [83] "Gray, Macy"                     "Griggs, Andy"                  
  ##  [85] "Guy"                            "Hanson"                        
  ##  [87] "Hart, Beth"                     "Heatherly, Eric"               
  ##  [89] "Henley, Don"                    "Herndon, Ty"                   
  ##  [91] "Hill, Faith"                    "Hoku"                          
  ##  [93] "Hollister, Dave"                "Hot Boys"                      
  ##  [95] "Houston, Whitney"               "IMx"                           
  ##  [97] "Ice Cube"                       "Ideal"                         
  ##  [99] "Iglesias, Enrique"              "J-Shin"                        
  ## [101] "Ja Rule"                        "Jackson, Alan"                 
  ## [103] "Jagged Edge"                    "Janet"                         
  ## [105] "Jay-Z"                          "Jean, Wyclef"                  
  ## [107] "Joe"                            "John, Elton"                   
  ## [109] "Jones, Donell"                  "Jordan, Montell"               
  ## [111] "Juvenile"                       "Kandi"                         
  ## [113] "Keith, Toby"                    "Kelis"                         
  ## [115] "Kenny G"                        "Kid Rock"                      
  ## [117] "Kravitz, Lenny"                 "Kumbia Kings"                  
  ## [119] "LFO"                            "LL Cool J"                     
  ## [121] "Larrieux, Amel"                 "Lawrence, Tracy"               
  ## [123] "Levert, Gerald"                 "Lil Bow Wow"                   
  ## [125] "Lil Wayne"                      "Lil' Kim"                      
  ## [127] "Lil' Mo"                        "Lil' Zane"                     
  ## [129] "Limp Bizkit"                    "Lonestar"                      
  ## [131] "Lopez, Jennifer"                "Loveless, Patty"               
  ## [133] "Lox"                            "Lucy Pearl"                    
  ## [135] "Ludacris"                       "M2M"                           
  ## [137] "Madison Avenue"                 "Madonna"                       
  ## [139] "Martin, Ricky"                  "Mary Mary"                     
  ## [141] "Master P"                       "McBride, Martina"              
  ## [143] "McEntire, Reba"                 "McGraw, Tim"                   
  ## [145] "McKnight, Brian"                "Messina, Jo Dee"               
  ## [147] "Metallica"                      "Montgomery Gentry"             
  ## [149] "Montgomery, John Michael"       "Moore, Chante"                 
  ## [151] "Moore, Mandy"                   "Mumba, Samantha"               
  ## [153] "Musiq"                          "Mya"                           
  ## [155] "Mystikal"                       "N'Sync"                        
  ## [157] "Nas"                            "Nelly"                         
  ## [159] "Next"                           "Nine Days"                     
  ## [161] "No Doubt"                       "Nu Flavor"                     
  ## [163] "Offspring, The"                 "Paisley, Brad"                 
  ## [165] "Papa Roach"                     "Pearl Jam"                     
  ## [167] "Pink"                           "Price, Kelly"                  
  ## [169] "Profyle"                        "Puff Daddy"                    
  ## [171] "Q-Tip"                          "R.E.M."                        
  ## [173] "Rascal Flatts"                  "Raye, Collin"                  
  ## [175] "Red Hot Chili Peppers"          "Rimes, LeAnn"                  
  ## [177] "Rogers, Kenny"                  "Ruff Endz"                     
  ## [179] "Sammie"                         "Santana"                       
  ## [181] "Savage Garden"                  "SheDaisy"                      
  ## [183] "Sheist, Shade"                  "Shyne"                         
  ## [185] "Simpson, Jessica"               "Sisqo"                         
  ## [187] "Sister Hazel"                   "Smash Mouth"                   
  ## [189] "Smith, Will"                    "Son By Four"                   
  ## [191] "Sonique"                        "SoulDecision"                  
  ## [193] "Spears, Britney"                "Spencer, Tracie"               
  ## [195] "Splender"                       "Sting"                         
  ## [197] "Stone Temple Pilots"            "Stone, Angie"                  
  ## [199] "Strait, George"                 "Sugar Ray"                     
  ## [201] "TLC"                            "Tamar"                         
  ## [203] "Tamia"                          "Third Eye Blind"               
  ## [205] "Thomas, Carl"                   "Tippin, Aaron"                 
  ## [207] "Train"                          "Trick Daddy"                   
  ## [209] "Trina"                          "Tritt, Travis"                 
  ## [211] "Tuesday"                        "Urban, Keith"                  
  ## [213] "Usher"                          "Vassar, Phil"                  
  ## [215] "Vertical Horizon"               "Vitamin C"                     
  ## [217] "Walker, Clay"                   "Wallflowers, The"              
  ## [219] "Westlife"                       "Williams, Robbie"              
  ## [221] "Wills, Mark"                    "Worley, Darryl"                
  ## [223] "Wright, Chely"                  "Yankee Grey"                   
  ## [225] "Yearwood, Trisha"               "Ying Yang Twins"               
  ## [227] "Zombie Nation"                  "matchbox twenty"
  ```


### Filtrando linhas: `filter`, `slice`

* Apenas as músicas da Britney Spears:

  
  ```r
  bb_tidy %>% 
    filter(artista == 'Spears, Britney')
  ```
  
  ```
  ## # A tibble: 51 x 5
  ##   artista         musica                  entrou     semana   pos
  ##   <chr>           <chr>                   <date>      <int> <dbl>
  ## 1 Spears, Britney From The Bottom Of M... 2000-01-29      1    76
  ## 2 Spears, Britney From The Bottom Of M... 2000-01-29      2    59
  ## 3 Spears, Britney From The Bottom Of M... 2000-01-29      3    52
  ## 4 Spears, Britney From The Bottom Of M... 2000-01-29      4    52
  ## 5 Spears, Britney From The Bottom Of M... 2000-01-29      5    14
  ## 6 Spears, Britney From The Bottom Of M... 2000-01-29      6    14
  ## # i 45 more rows
  ```

* Apenas músicas que chegaram à posição $1$, sem mostrar a coluna `pos`:

  
  ```r
  bb_tidy %>% 
    filter(pos == 1) %>% 
    select(-pos)
  ```
  
  ```
  ## # A tibble: 55 x 4
  ##   artista             musica                  entrou     semana
  ##   <chr>               <chr>                   <date>      <int>
  ## 1 Aaliyah             Try Again               2000-03-18     14
  ## 2 Aguilera, Christina Come On Over Baby (A... 2000-08-05     11
  ## 3 Aguilera, Christina Come On Over Baby (A... 2000-08-05     12
  ## 4 Aguilera, Christina Come On Over Baby (A... 2000-08-05     13
  ## 5 Aguilera, Christina Come On Over Baby (A... 2000-08-05     14
  ## 6 Aguilera, Christina What A Girl Wants       1999-11-27      8
  ## # i 49 more rows
  ```

* Apenas músicas que chegaram à posição $1$ em menos de $10$ semanas, mostrando apenas artista e música:

  
  ```r
  bb_tidy %>% 
    filter(pos == 1, semana < 10) %>% 
    distinct(artista, musica)
  ```
  
  ```
  ## # A tibble: 5 x 2
  ##   artista             musica                 
  ##   <chr>               <chr>                  
  ## 1 Aguilera, Christina What A Girl Wants      
  ## 2 Destiny's Child     Independent Women Pa...
  ## 3 Madonna             Music                  
  ## 4 Santana             Maria, Maria           
  ## 5 Sisqo               Incomplete
  ```

* As funções da família `slice` filtram linhas de diversas maneiras.

* De acordo com seus índices (números de linha):

  
  ```r
  bb_tidy %>% 
    slice(c(1, 1000, 5000))
  ```
  
  ```
  ## # A tibble: 3 x 5
  ##   artista                 musica                entrou     semana   pos
  ##   <chr>                   <chr>                 <date>      <int> <dbl>
  ## 1 2 Pac                   Baby Don't Cry (Keep~ 2000-02-26      1    87
  ## 2 Clark Family Experience Meanwhile Back At Th~ 2000-11-18      3    81
  ## 3 Vassar, Phil            Carlene               2000-03-04      3    64
  ```
  
  
  ```r
  bb_tidy %>% 
    slice_head(n = 4)
  ```
  
  ```
  ## # A tibble: 4 x 5
  ##   artista musica                  entrou     semana   pos
  ##   <chr>   <chr>                   <date>      <int> <dbl>
  ## 1 2 Pac   Baby Don't Cry (Keep... 2000-02-26      1    87
  ## 2 2 Pac   Baby Don't Cry (Keep... 2000-02-26      2    82
  ## 3 2 Pac   Baby Don't Cry (Keep... 2000-02-26      3    72
  ## 4 2 Pac   Baby Don't Cry (Keep... 2000-02-26      4    77
  ```
  
  
  ```r
  bb_tidy %>% 
    slice_tail(n = 4)
  ```
  
  ```
  ## # A tibble: 4 x 5
  ##   artista         musica entrou     semana   pos
  ##   <chr>           <chr>  <date>      <int> <dbl>
  ## 1 matchbox twenty Bent   2000-04-29     36    37
  ## 2 matchbox twenty Bent   2000-04-29     37    38
  ## 3 matchbox twenty Bent   2000-04-29     38    38
  ## 4 matchbox twenty Bent   2000-04-29     39    48
  ```

* De acordo com a [ordenação de uma coluna]{.hl} ou [de uma função das colunas]{.hl}:
  
  
  ```r
  bb_tidy %>% 
    slice_min(pos)
  ```
  
  ```
  ## # A tibble: 55 x 5
  ##   artista             musica                  entrou     semana   pos
  ##   <chr>               <chr>                   <date>      <int> <dbl>
  ## 1 Aaliyah             Try Again               2000-03-18     14     1
  ## 2 Aguilera, Christina Come On Over Baby (A... 2000-08-05     11     1
  ## 3 Aguilera, Christina Come On Over Baby (A... 2000-08-05     12     1
  ## 4 Aguilera, Christina Come On Over Baby (A... 2000-08-05     13     1
  ## 5 Aguilera, Christina Come On Over Baby (A... 2000-08-05     14     1
  ## 6 Aguilera, Christina What A Girl Wants       1999-11-27      8     1
  ## # i 49 more rows
  ```
  
  
  ```r
  bb_tidy %>% 
    slice_max(semana)
  ```
  
  ```
  ## # A tibble: 1 x 5
  ##   artista musica entrou     semana   pos
  ##   <chr>   <chr>  <date>      <int> <dbl>
  ## 1 Creed   Higher 1999-09-11     65    49
  ```

* Aleatoriamente, criando uma amostra:
  
  
  ```r
  bb_tidy %>% 
    slice_sample(n = 5)
  ```
  
  ```
  ## # A tibble: 5 x 5
  ##   artista              musica             entrou     semana   pos
  ##   <chr>                <chr>              <date>      <int> <dbl>
  ## 1 Backstreet Boys, The Shape Of My Heart  2000-10-14     16    31
  ## 2 Madison Avenue       Don't Call Me Baby 2000-07-08     12    88
  ## 3 Jagged Edge          He Can't Love U    1999-12-11     20    77
  ## 4 Clark, Terri         A Little Gasoline  2000-12-16      6    99
  ## 5 Chesney, Kenny       I Lost It          2000-10-21      3    61
  ```
  
* Veja a ajuda de `slice` para saber mais sobre estas funções. Por exemplo: 

  * `slice_min` e `slice_max` podem considerar ou não empates.
  
  * Você pode especificar uma proporção de linhas (usando `prop`) em vez da quantidade de linhas (`n`).
  
  * Você pode fazer amostragem com reposição, ou com probabilidades diferentes para cada linha.


### Ordenando linhas: `arrange`

* Por título, sem repetições:

  
  ```r
  bb_tidy %>% 
    select(musica) %>% 
    distinct() %>% 
    arrange(musica)
  ```
  
  ```
  ## # A tibble: 316 x 1
  ##   musica                 
  ##   <chr>                  
  ## 1 (Hot S**t) Country G...
  ## 2 3 Little Words         
  ## 3 911                    
  ## 4 A Country Boy Can Su...
  ## 5 A Little Gasoline      
  ## 6 A Puro Dolor (Purest...
  ## # i 310 more rows
  ```

* Por título, sem repetições, em ordem inversa:

  
  ```r
  bb_tidy %>% 
    select(musica) %>% 
    distinct() %>% 
    arrange(desc(musica))
  ```
  
  ```
  ## # A tibble: 316 x 1
  ##   musica                 
  ##   <chr>                  
  ## 1 www.memory             
  ## 2 Your Everything        
  ## 3 You're A God           
  ## 4 You'll Always Be Lov...
  ## 5 You Won't Be Lonely ...
  ## 6 You Should've Told M...
  ## # i 310 more rows
  ```


### Contando linhas: `count`

* Quantas semanas cada artista ficou nos *top* $100$? Duas músicas na mesma semana contam como duas semanas.

  
  ```r
  bb_tidy %>% 
    count(artista, sort = TRUE)
  ```
  
  ```
  ## # A tibble: 228 x 2
  ##   artista             n
  ##   <chr>           <int>
  ## 1 Creed             104
  ## 2 Lonestar           95
  ## 3 Destiny's Child    92
  ## 4 N'Sync             74
  ## 5 Sisqo              74
  ## 6 3 Doors Down       73
  ## # i 222 more rows
  ```

* Quantas semanas cada música ficou nos *top* $100$?

  
  ```r
  bb_tidy %>% 
    count(musica, sort = TRUE)
  ```
  
  ```
  ## # A tibble: 316 x 2
  ##   musica                  n
  ##   <chr>               <int>
  ## 1 Higher                 57
  ## 2 Amazed                 55
  ## 3 Breathe                53
  ## 4 Kryptonite             53
  ## 5 With Arms Wide Open    47
  ## 6 I Wanna Know           44
  ## # i 310 more rows
  ```

* Se houve músicas com o mesmo nome, mas de artistas diferentes, [o código acima está errado]{.hl}. O certo é

  
  ```r
  bb_tidy %>% 
    count(musica, artista, sort = TRUE)
  ```
  
  ```
  ## # A tibble: 317 x 3
  ##   musica              artista          n
  ##   <chr>               <chr>        <int>
  ## 1 Higher              Creed           57
  ## 2 Amazed              Lonestar        55
  ## 3 Breathe             Hill, Faith     53
  ## 4 Kryptonite          3 Doors Down    53
  ## 5 With Arms Wide Open Creed           47
  ## 6 I Wanna Know        Joe             44
  ## # i 311 more rows
  ```

  De fato, há uma diferença de uma linha.
  
  
#### Exercício

* Ache o título da música que tem dois artistas diferentes. 

  **Sugestão:** conte por música e artista primeiro, depois só por música.


### Agrupando linhas: `group_by` e `summarize`

* Qual foi a melhor posição que cada artista alcançou?

  
  ```r
  bb_tidy %>% 
    group_by(artista) %>% 
    summarize(melhor = min(pos)) %>% 
    arrange(melhor)
  ```
  
  ```
  ## # A tibble: 228 x 2
  ##   artista             melhor
  ##   <chr>                <dbl>
  ## 1 Aaliyah                  1
  ## 2 Aguilera, Christina      1
  ## 3 Carey, Mariah            1
  ## 4 Creed                    1
  ## 5 Destiny's Child          1
  ## 6 Iglesias, Enrique        1
  ## # i 222 more rows
  ```

* Qual foi a melhor posição que cada música alcançou?

  
  ```r
  bb_tidy %>% 
    group_by(artista, musica) %>% 
    summarize(melhor = min(pos)) %>% 
    arrange(melhor)
  ```
  
  ```
  ## `summarise()` has grouped output by 'artista'. You can override using
  ## the `.groups` argument.
  ```
  
  ```
  ## # A tibble: 317 x 3
  ##   artista             musica                  melhor
  ##   <chr>               <chr>                    <dbl>
  ## 1 Aaliyah             Try Again                    1
  ## 2 Aguilera, Christina Come On Over Baby (A...      1
  ## 3 Aguilera, Christina What A Girl Wants            1
  ## 4 Carey, Mariah       Thank God I Found Yo...      1
  ## 5 Creed               With Arms Wide Open          1
  ## 6 Destiny's Child     Independent Women Pa...      1
  ## # i 311 more rows
  ```

* Quando usamos `summarize`, só o agrupamento [mais interno]{.hl} é desfeito. Isto significa que [o resultado acima ainda está agrupado por `artista`]{.hl}.

* Quantas semanas cada artista ficou na posição $1$? 

  A função `n()` é uma maneira conveniente de [obter o número de linhas de um grupo]{.hl} (ou, se não houver agrupamento, de toda a *tibble*); mas [`n()` só pode ser chamada em certos contextos]{.hl}, como `summarise()` ou `mutate()`.

  
  ```r
  bb_tidy %>% 
    filter(pos == 1) %>% 
    group_by(artista) %>%
    summarize(semanas = n()) %>% 
    arrange(desc(semanas))
  ```
  
  ```
  ## # A tibble: 15 x 2
  ##   artista             semanas
  ##   <chr>                 <int>
  ## 1 Destiny's Child          14
  ## 2 Santana                  10
  ## 3 Aguilera, Christina       6
  ## 4 Madonna                   4
  ## 5 Savage Garden             4
  ## 6 Iglesias, Enrique         3
  ## # i 9 more rows
  ```

* Perceba que `count`, que vimos mais acima, faz agrupamentos do mesmo modo:

  
  ```r
  bb_tidy %>% 
    filter(pos == 1) %>% 
    count(artista, sort = TRUE)
  ```
  
  ```
  ## # A tibble: 15 x 2
  ##   artista                 n
  ##   <chr>               <int>
  ## 1 Destiny's Child        14
  ## 2 Santana                10
  ## 3 Aguilera, Christina     6
  ## 4 Madonna                 4
  ## 5 Savage Garden           4
  ## 6 Iglesias, Enrique       3
  ## # i 9 more rows
  ```

* Uma pergunta diferente: quais são os artistas cujas músicas apareceram no *top* $100$ mais tempo depois do lançamento da música?

  
  ```r
  bb_tidy %>% 
    group_by(artista) %>% 
    summarize(semanas = max(semana)) %>% 
    arrange(desc(semanas))
  ```
  
  ```
  ## # A tibble: 228 x 2
  ##   artista          semanas
  ##   <chr>              <int>
  ## 1 Creed                 65
  ## 2 Lonestar              64
  ## 3 3 Doors Down          53
  ## 4 Hill, Faith           53
  ## 5 Joe                   44
  ## 6 Vertical Horizon      41
  ## # i 222 more rows
  ```


* Qual a posição média de cada música? Lembre-se de que eliminamos as linhas com `NA`; logo, [a média vai ser sobre a quantidade de semanas em que a música esteve na lista]{.hl}.

    
    ```r
    media1 <- bb_tidy %>% 
      group_by(artista, musica) %>% 
      summarize(media = mean(pos), .groups = 'drop') %>% 
      arrange(media)
    ```

  
  ```r
  media1
  ```
  
  ```
  ## # A tibble: 317 x 3
  ##   artista                          musica                  media
  ##   <chr>                            <chr>                   <dbl>
  ## 1 "Santana"                        Maria, Maria             10.5
  ## 2 "Madonna"                        Music                    13.5
  ## 3 "N'Sync"                         Bye Bye Bye              14.3
  ## 4 "Elliott, Missy \"Misdemeanor\"" Hot Boyz                 14.3
  ## 5 "Destiny's Child"                Independent Women Pa...  14.8
  ## 6 "Iglesias, Enrique"              Be With You              15.8
  ## # i 311 more rows
  ```

* E se quisermos [a média sobre o número de semanas desde a entrada da música até a última semana]{.hl} em que a música apareceu na lista?

    
    ```r
    media2 <- bb_tidy %>% 
      group_by(artista, musica) %>% 
      summarize(media = sum(pos)/max(semana), .groups = 'drop') %>% 
      arrange(media)
    ```
    
  
  ```r
  media2
  ```
  
  ```
  ## # A tibble: 317 x 3
  ##   artista                          musica                  media
  ##   <chr>                            <chr>                   <dbl>
  ## 1 "Santana"                        Maria, Maria             10.5
  ## 2 "Madonna"                        Music                    13.5
  ## 3 "N'Sync"                         Bye Bye Bye              14.3
  ## 4 "Elliott, Missy \"Misdemeanor\"" Hot Boyz                 14.3
  ## 5 "Destiny's Child"                Independent Women Pa...  14.8
  ## 6 "Iglesias, Enrique"              Be With You              15.8
  ## # i 311 more rows
  ```

  As primeiras linhas são iguais, mas os resultados são diferentes:

    
    ```r
    identical(media1, media2)
    ```
    
    ```
    ## [1] FALSE
    ```

## Exercícios

1. Vamos trabalhar com um conjunto de dados sobre super-heróis.

   Carregue o `tidyverse` com o comando

    
    ```r
    library(tidyverse)
    ```
   
   Execute o seguinte comando para ler os dados para uma *tibble*:

    
    ```r
    arquivo <- paste0(
      'https://github.com/fnaufel/',
      'probestr/raw/master/data/',
      'heroes_information.csv'      
    )
    
    herois_info <- read_csv(
      arquivo,
      na = c('', '-', 'NA')
    ) %>% 
      # Eliminar a primeira coluna (números de série)
      select(-1) %>% 
      # Renomear colunas restantes
      rename(
        nome = name,
        sexo = Gender,
        olhos = 'Eye color',
        raça = Race,
        cabelos = 'Hair color',
        altura = Height,
        editora = Publisher,
        pele = 'Skin color',
        lado = Alignment,
        peso = Weight
      )
    ```

1. Quantas linhas tem a *tibble*?

   
     \begin{comment}

   
   
   ```r
   herois_info %>% nrow()
   ```
   
   ```
   ## [1] 734
   ```
   
   
     \end{comment}


1. Existem heróis que aparecem em mais de uma linha?

   
     \begin{comment}

   
   
   ```r
   herois_info %>% 
     count(nome)
   ```
   
   ```
   ## # A tibble: 715 x 2
   ##   nome              n
   ##   <chr>         <int>
   ## 1 A-Bomb            1
   ## 2 Abe Sapien        1
   ## 3 Abin Sur          1
   ## 4 Abomination       1
   ## 5 Abraxas           1
   ## 6 Absorbing Man     1
   ## # i 709 more rows
   ```
   
   Precisaríamos [examinar a tabela acima]{.hl}, procurando linhas com $n > 1$. 
   
   [Vamos pedir para o R fazer isto:]{.hl}
   
   
   ```r
   repetidos <- herois_info %>% 
     count(nome) %>% 
     filter(n > 1)
   
   repetidos
   ```
   
   ```
   ## # A tibble: 17 x 2
   ##   nome             n
   ##   <chr>        <int>
   ## 1 Angel            2
   ## 2 Atlas            2
   ## 3 Atom             2
   ## 4 Batgirl          2
   ## 5 Batman           2
   ## 6 Black Canary     2
   ## # i 11 more rows
   ```
   
   Vamos mostrar mais dados destes heróis:
   
   
   ```r
   herois_info %>% 
     filter(nome %in% repetidos$nome) %>% 
     select(nome, editora, raça, everything())
   ```
   
   ```
   ## # A tibble: 36 x 10
   ##   nome  editora      raça  sexo  olhos cabelos altura pele  lado   peso
   ##   <chr> <chr>        <chr> <chr> <chr> <chr>    <dbl> <chr> <chr> <dbl>
   ## 1 Angel Marvel Comi~ <NA>  Male  blue  Blond      183 <NA>  good     68
   ## 2 Angel Dark Horse ~ Vamp~ Male  <NA>  <NA>       -99 <NA>  good    -99
   ## 3 Atlas Marvel Comi~ Muta~ Male  brown Red        183 <NA>  good    101
   ## 4 Atlas DC Comics    God ~ Male  blue  Brown      198 <NA>  bad     126
   ## 5 Atom  DC Comics    <NA>  Male  blue  Red        178 <NA>  good     68
   ## 6 Atom  DC Comics    <NA>  Male  <NA>  <NA>       -99 <NA>  good    -99
   ## # i 30 more rows
   ```
   
   Em alguns casos, são editoras diferentes (como para Angel e Atlas). 
   
   Em alguns casos, o mesmo herói aparece com várias características.
   
   São $17$ heróis que aparecem mais de uma vez. É um número pequeno o bastante para corrigirmos a situação manualmente. 
   
   Como não tenho conhecimento suficiente sobre heróis para fazer isso, vou ignorar esta confusão e usar os dados como estão.
   
   
     \end{comment}


1. Quantas editoras diferentes existem na *tibble*? Liste-as em ordem decrescente de quantidade de heróis.

   
     \begin{comment}

     
   
   ```r
   herois_info %>% count(editora, sort = TRUE)
   ```
   
   ```
   ## # A tibble: 25 x 2
   ##   editora               n
   ##   <chr>             <int>
   ## 1 Marvel Comics       388
   ## 2 DC Comics           215
   ## 3 NBC - Heroes         19
   ## 4 Dark Horse Comics    18
   ## 5 <NA>                 15
   ## 6 George Lucas         14
   ## # i 19 more rows
   ```
     
   
     \end{comment}


1. Vamos colocar todas as editores menores em uma classe só. 

   Na coluna `editora`, substitua 

   * 'Marvel Comics' por 'Marvel', 
   * 'DC Comics' por 'DC', e 
   * todas as outras editoras pelo termo 'Outras'.
   
   **Dica:** use a função `case_when()`, do `tidyverse`.

   
     \begin{comment}

   
   
   ```r
   herois_info <- herois_info %>% 
     mutate(
       editora = case_when(
         editora == 'Marvel Comics' ~ 'Marvel',
         editora == 'DC Comics' ~ 'DC',
         TRUE ~ 'Outras'
       )
   )
   ```
   
   
     \end{comment}


1. Confira, novamente, a quantidade de valores diferentes na coluna `editora`.

   
     \begin{comment}

     
   
   ```r
   herois_info %>% count(editora, sort = TRUE)
   ```
   
   ```
   ## # A tibble: 3 x 2
   ##   editora     n
   ##   <chr>   <int>
   ## 1 Marvel    388
   ## 2 DC        215
   ## 3 Outras    131
   ```
     
   
     \end{comment}


1. Existem heróis sem informação de editora. Quantos? Quais são?

   
     \begin{comment}

   
   
   ```r
   herois_info %>% filter(is.na(editora))
   ```
   
   ```
   ## # A tibble: 0 x 10
   ## # i 10 variables: nome <chr>, sexo <chr>, olhos <chr>, raça <chr>,
   ## #   cabelos <chr>, altura <dbl>, editora <chr>, pele <chr>,
   ## #   lado <chr>, peso <dbl>
   ```
   
   Na verdade, a chamada a `case_when()`, da maneira como fiz, já substituiu os `NA` por 'Outras'. Entenda por quê.
     
   
     \end{comment}


1. Altere novamente a coluna `editora`, colocando o valor 'Outras' para os heróis sem informação de editora. Use a função `if_else()` (com *underscore*, não a função `ifelse`).

   
     \begin{comment}

   
   Se, no seu caso, ainda houver valores `NA` em `editora`, basta fazer o seguinte:
   
   
   ```r
   herois_info <- herois_info %>% 
     mutate(
       editora = if_else(is.na(editora), 'Outras', editora)
     )
   ```
   
   
     \end{comment}



1. Confira, mais uma vez, a quantidade de valores diferentes na coluna `editora`.

   
     \begin{comment}

     
   
   ```r
   herois_info %>% count(editora, sort = TRUE)
   ```
   
   ```
   ## # A tibble: 3 x 2
   ##   editora     n
   ##   <chr>   <int>
   ## 1 Marvel    388
   ## 2 DC        215
   ## 3 Outras    131
   ```
     
   
     \end{comment}


1. Existem heróis sem informação de sexo? Quantos? Para estes heróis, coloque o valor 'Desconhecido' na coluna `sexo`.

   
     \begin{comment}

   
   
   ```r
   herois_info %>% filter(is.na(sexo))
   ```
   
   ```
   ## # A tibble: 29 x 10
   ##   nome       sexo  olhos raça  cabelos altura editora pele  lado   peso
   ##   <chr>      <chr> <chr> <chr> <chr>    <dbl> <chr>   <chr> <chr> <dbl>
   ## 1 Bird-Brain <NA>  <NA>  <NA>  <NA>       -99 Marvel  <NA>  good    -99
   ## 2 Blaquesmi~ <NA>  black <NA>  No Hair    -99 Marvel  <NA>  good    -99
   ## 3 Box III    <NA>  blue  <NA>  Blond      193 Marvel  <NA>  good    110
   ## 4 Box IV     <NA>  brown <NA>  Brown ~    -99 Marvel  <NA>  good    -99
   ## 5 Captain U~ <NA>  <NA>  God ~ <NA>       -99 Marvel  <NA>  good    -99
   ## 6 Cecilia R~ <NA>  brown <NA>  Brown      170 Marvel  <NA>  good     62
   ## # i 23 more rows
   ```
   
   
   ```r
   herois_info <-  herois_info %>% 
     mutate(
       sexo = if_else(
         is.na(sexo),
         'Desconhecido',
         sexo
       )
     )
   ```

   Conferindo:
   
   
   ```r
   herois_info %>% filter(is.na(sexo))
   ```
   
   ```
   ## # A tibble: 0 x 10
   ## # i 10 variables: nome <chr>, sexo <chr>, olhos <chr>, raça <chr>,
   ## #   cabelos <chr>, altura <dbl>, editora <chr>, pele <chr>,
   ## #   lado <chr>, peso <dbl>
   ```

   
     \end{comment}


1. Qual a altura mínima? Qual a altura máxima? Substitua as alturas negativas por `NA`.

   
     \begin{comment}

   
   Podemos extrair o vetor de alturas com `pull` e usar a função `summary` do R    base, que retorna um vetor:
   
   
   ```r
   herois_info %>% 
     pull(altura) %>% 
     summary()
   ```
   
   ```
   ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   ##   -99,0   -99,0   175,0   102,3   185,0   975,0
   ```
   
   Ou podemos usar `summarize`, do `tidyverse`, que retorna uma *tibble*:
   
   
   ```r
   herois_info %>% 
     summarize(
       minimo = min(altura),
       maximo = max(altura)
     )
   ```
   
   ```
   ## # A tibble: 1 x 2
   ##   minimo maximo
   ##    <dbl>  <dbl>
   ## 1    -99    975
   ```
   
   Quantas alturas negativas existem?
   
   
   ```r
   herois_info %>% count(altura < 0)
   ```
   
   ```
   ## # A tibble: 2 x 2
   ##   `altura < 0`     n
   ##   <lgl>        <int>
   ## 1 FALSE          517
   ## 2 TRUE           217
   ```
   
   Substituindo as alturas negativas por `NA`:
   
   
   ```r
   herois_info <- herois_info %>% 
     mutate(
       altura = if_else(
         altura < 0,
         NA_real_,
         altura
       )
     )
   ```
   
   Como `if_else` (com *underscore*) é exigente, precisamos passar `NA_real_` em vez de `NA`.
   
   Situação atual:

   
   ```r
   herois_info %>% 
     pull(altura) %>% 
     summary()
   ```
   
   ```
   ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   ##    15,2   173,0   183,0   186,7   191,0   975,0     217
   ```
   
   
     \end{comment}


1. Qual o peso mínimo? Qual o peso máximo? Substitua os pesos negativos por `NA`.

   
     \begin{comment}

   
   Como fizemos com as alturas:
   
   
   ```r
   herois_info %>% 
     pull(peso) %>% 
     summary()
   ```
   
   ```
   ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   ##  -99,00  -99,00   62,00   43,86   90,00  900,00       2
   ```
   
   Observe que existem valores `NA` em peso.
   
   
   ```r
   herois_info %>% 
     summarize(
       minimo = min(peso),
       maximo = max(peso)
     )
   ```
   
   ```
   ## # A tibble: 1 x 2
   ##   minimo maximo
   ##    <dbl>  <dbl>
   ## 1     NA     NA
   ```
   
   Para ignorar os valores `NA` nas funções `min()` e `max()`:
   
   
   ```r
   herois_info %>% 
     summarize(
       minimo = min(peso, na.rm = TRUE),
       maximo = max(peso, na.rm = TRUE)
     )
   ```
   
   ```
   ## # A tibble: 1 x 2
   ##   minimo maximo
   ##    <dbl>  <dbl>
   ## 1    -99    900
   ```
   
   Quantos pesos negativos existem?
   
   
   ```r
   herois_info %>% count(peso < 0)
   ```
   
   ```
   ## # A tibble: 3 x 2
   ##   `peso < 0`     n
   ##   <lgl>      <int>
   ## 1 FALSE        495
   ## 2 TRUE         237
   ## 3 NA             2
   ```
   
   Substituindo por `NA`:
   
   
   ```r
   herois_info <- herois_info %>% 
     mutate(
       peso = if_else(
         peso < 0,
         NA_real_,
         peso
       )
     )
   ```
   
   Como `if_else` (com *underscore*) é exigente, precisamos passar `NA_real_`    em vez de `NA`.
   
   Situação atual:

   
   ```r
   herois_info %>% 
     pull(peso) %>% 
     summary()
   ```
   
   ```
   ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   ##     2,0    61,0    81,0   112,3   108,0   900,0     239
   ```
   
   
     \end{comment}


1. Qual é o peso médio de todos os heróis? Ignore os valores `NA`.

   
     \begin{comment}

      
   
   ```r
   herois_info %>% pull(peso) %>% mean(na.rm = TRUE)
   ```
   
   ```
   ## [1] 112,2525
   ```
    
   
     \end{comment}


1. Qual é a altura média de todos os heróis? Ignore os valores `NA`.

   
     \begin{comment}

      
   
   ```r
   herois_info %>% pull(altura) %>% mean(na.rm = TRUE)
   ```
   
   ```
   ## [1] 186,7263
   ```
    
   
     \end{comment}


1. Qual é a altura média dos heróis, por editora? Ignore os valores `NA`.

   
     \begin{comment}

   
   
   ```r
   herois_info %>% 
     group_by(editora) %>% 
     summarize(média = mean(altura, na.rm = TRUE))
   ```
   
   ```
   ## # A tibble: 3 x 2
   ##   editora média
   ##   <chr>   <dbl>
   ## 1 DC       181.
   ## 2 Marvel   191.
   ## 3 Outras   179.
   ```
   
   
     \end{comment}


1. Quais são os $3$ heróis mais altos de cada sexo?

   
     \begin{comment}

   
   
   ```r
   herois_info %>% 
     group_by(sexo) %>% 
     slice_max(altura, n = 3) %>% 
     select(nome, sexo, altura)
   ```
   
   ```
   ## # A tibble: 11 x 3
   ##   nome          sexo         altura
   ##   <chr>         <chr>         <dbl>
   ## 1 Living Brain  Desconhecido    198
   ## 2 Fabian Cortez Desconhecido    196
   ## 3 Box III       Desconhecido    193
   ## 4 Firelord      Desconhecido    193
   ## 5 Wolfsbane     Female          366
   ## 6 Rey           Female          297
   ## # i 5 more rows
   ```
   
   Como houve empates, foram mostrados $4$ de sexo desconhecido e $4$ do sexo feminino.
   
   Leia a documentação da função `slice_max` para descobrir como mostrar    exatamente $n$ de cada grupo. (Dica: "empate", em inglês, é "*tie*".)
   
   
     \end{comment}


1. Quais são as $3$ cores de olhos mais comuns para cada sexo?

   
     \begin{comment}

   
   
   ```r
   herois_info %>% 
     group_by(sexo) %>% 
     count(olhos, sort = TRUE) %>% 
     slice_head(n = 3)
   ```
   
   ```
   ## # A tibble: 9 x 3
   ##   sexo         olhos     n
   ##   <chr>        <chr> <int>
   ## 1 Desconhecido <NA>     10
   ## 2 Desconhecido blue      6
   ## 3 Desconhecido red       5
   ## 4 Female       blue     76
   ## 5 Female       green    43
   ## 6 Female       <NA>     41
   ## # i 3 more rows
   ```
   
   
     \end{comment}


1. Liste, por editora, as quantidades de heróis do bem, do mal, e neutros.

   
     \begin{comment}

   
   
   ```r
   herois_info %>% 
     group_by(editora) %>% 
     count(lado)
   ```
   
   ```
   ## # A tibble: 11 x 3
   ##   editora lado        n
   ##   <chr>   <chr>   <int>
   ## 1 DC      bad        59
   ## 2 DC      good      142
   ## 3 DC      neutral    13
   ## 4 DC      <NA>        1
   ## 5 Marvel  bad       115
   ## 6 Marvel  good      259
   ## # i 5 more rows
   ```
   
   ou
   
   
   ```r
   herois_info %>% 
     group_by(editora, lado) %>% 
     summarize(n())
   ```
   
   ```
   ## `summarise()` has grouped output by 'editora'. You can override using
   ## the `.groups` argument.
   ```
   
   ```
   ## # A tibble: 11 x 3
   ##   editora lado    `n()`
   ##   <chr>   <chr>   <int>
   ## 1 DC      bad        59
   ## 2 DC      good      142
   ## 3 DC      neutral    13
   ## 4 DC      <NA>        1
   ## 5 Marvel  bad       115
   ## 6 Marvel  good      259
   ## # i 5 more rows
   ```
   
   
     \end{comment}


1. Quantas raças diferentes existem?

   
     \begin{comment}

   
   
   ```r
   herois_info %>% 
     pull(raça) %>% 
     n_distinct()
   ```
   
   ```
   ## [1] 62
   ```
   
   ou (mostrando os nomes das raças e as quantidades de heróis por raça)

   
   ```r
   herois_info %>% 
     count(raça)
   ```
   
   ```
   ## # A tibble: 62 x 2
   ##   raça          n
   ##   <chr>     <int>
   ## 1 Alien         7
   ## 2 Alpha         5
   ## 3 Amazon        2
   ## 4 Android       9
   ## 5 Animal        4
   ## 6 Asgardian     5
   ## # i 56 more rows
   ```
   
   ou 
   
   
   ```r
   herois_info %>% 
     group_by(raça) %>% 
     summarise(n())
   ```
   
   ```
   ## # A tibble: 62 x 2
   ##   raça      `n()`
   ##   <chr>     <int>
   ## 1 Alien         7
   ## 2 Alpha         5
   ## 3 Amazon        2
   ## 4 Android       9
   ## 5 Animal        4
   ## 6 Asgardian     5
   ## # i 56 more rows
   ```
   
   
     \end{comment}


1. Qual a quantidade de raças diferentes de cada editora?

   
     \begin{comment}

   
   
   ```r
   herois_info %>% 
     group_by(editora) %>% 
     summarise(n = n_distinct(raça))
   ```
   
   ```
   ## # A tibble: 3 x 2
   ##   editora     n
   ##   <chr>   <int>
   ## 1 DC         30
   ## 2 Marvel     32
   ## 3 Outras     23
   ```
   
   
     \end{comment}


1. **DESAFIO:** Liste as raças que só pertencem a uma única editora.

   Existem várias maneiras de fazer isto. Experimente várias, até achar uma que seja mais elegante.

   
     \begin{comment}

   
   * Maneira simples, usando contagem:
   
     
     ```r
     herois_info %>% 
       group_by(raça) %>% 
       summarise(n_ed = n_distinct(editora)) %>% 
       filter(n_ed == 1)
     ```
     
     ```
     ## # A tibble: 47 x 2
     ##   raça        n_ed
     ##   <chr>      <int>
     ## 1 Alpha          1
     ## 2 Amazon         1
     ## 3 Asgardian      1
     ## 4 Bizarro        1
     ## 5 Bolovaxian     1
     ## 6 Clone          1
     ## # i 41 more rows
     ```
   
   * Maneira repetitiva, manual:
   
     
     ```r
     racas_marvel <- herois_info %>% 
       filter(editora == 'Marvel') %>% 
       select(raça) %>% 
       unique()
     
     racas_dc <- herois_info %>% 
       filter(editora == 'DC') %>% 
       select(raça) %>% 
       unique()
     
     racas_outras <- herois_info %>% 
       filter(editora == 'Outras') %>% 
       select(raça) %>% 
       unique()
     ```
     
     Exclusivas da Marvel:
     
     
     ```r
     racas_marvel %>% 
       setdiff(racas_dc) %>% 
       setdiff(racas_outras) %>% 
       arrange(raça)
     ```
     
     ```
     ## # A tibble: 17 x 1
     ##   raça          
     ##   <chr>         
     ## 1 Asgardian     
     ## 2 Clone         
     ## 3 Cosmic Entity 
     ## 4 Eternal       
     ## 5 Flora Colossus
     ## 6 Frost Giant   
     ## # i 11 more rows
     ```
   
     Exclusivas da DC:
   
     
     ```r
     racas_dc %>% 
       setdiff(racas_marvel) %>% 
       setdiff(racas_outras) %>% 
       arrange(raça)
     ```
     
     ```
     ## # A tibble: 17 x 1
     ##   raça           
     ##   <chr>          
     ## 1 Amazon         
     ## 2 Bizarro        
     ## 3 Bolovaxian     
     ## 4 Czarnian       
     ## 5 Gorilla        
     ## 6 Human-Vuldarian
     ## # i 11 more rows
     ```
     
     Exclusivas de outras editoras:
   
     
     ```r
     racas_outras %>% 
       setdiff(racas_dc) %>% 
       setdiff(racas_marvel) %>% 
       arrange(raça)
     ```
     
     ```
     ## # A tibble: 13 x 1
     ##   raça              
     ##   <chr>             
     ## 1 Alpha             
     ## 2 Dathomirian Zabrak
     ## 3 Gungan            
     ## 4 Human / Clone     
     ## 5 Human-Vulcan      
     ## 6 Icthyo Sapien     
     ## # i 7 more rows
     ```
   
   * Mesma maneira, mas usando uma função:
     
     
     ```r
     racas_exclusivas <- function(x) {
     
       esta_editora <- herois_info %>% 
         filter(editora == x) %>% 
         select(raça) %>% 
         unique()
       
       outras_editoras <- herois_info %>% 
         filter(editora != x) %>% 
         select(raça) %>% 
         unique()
       
       esta_editora %>%
         setdiff(outras_editoras) %>% 
         arrange(raça)
     }
     ```
     
     
     ```r
     racas_exclusivas('Marvel')
     ```
     
     ```
     ## # A tibble: 17 x 1
     ##   raça          
     ##   <chr>         
     ## 1 Asgardian     
     ## 2 Clone         
     ## 3 Cosmic Entity 
     ## 4 Eternal       
     ## 5 Flora Colossus
     ## 6 Frost Giant   
     ## # i 11 more rows
     ```
     
     
     ```r
     racas_exclusivas('DC')
     ```
     
     ```
     ## # A tibble: 17 x 1
     ##   raça           
     ##   <chr>          
     ## 1 Amazon         
     ## 2 Bizarro        
     ## 3 Bolovaxian     
     ## 4 Czarnian       
     ## 5 Gorilla        
     ## 6 Human-Vuldarian
     ## # i 11 more rows
     ```
     
     
     ```r
     racas_exclusivas('Outras')
     ```
     
     ```
     ## # A tibble: 13 x 1
     ##   raça              
     ##   <chr>             
     ## 1 Alpha             
     ## 2 Dathomirian Zabrak
     ## 3 Gungan            
     ## 4 Human / Clone     
     ## 5 Human-Vulcan      
     ## 6 Icthyo Sapien     
     ## # i 7 more rows
     ```
   
   * Maneira complicada, usando `join`:
   
     
     ```r
     herois_info %>% 
       select(raça, editora) %>% 
       group_by(raça) %>% 
       summarise(n_editoras = n_distinct(editora)) %>% 
       filter(n_editoras == 1) %>% 
       inner_join(herois_info, by = 'raça') %>% 
       select(raça, editora) %>% 
       unique() %>% 
       arrange(editora)
     ```
     
     ```
     ## # A tibble: 47 x 2
     ##   raça            editora
     ##   <chr>           <chr>  
     ## 1 Amazon          DC     
     ## 2 Bizarro         DC     
     ## 3 Bolovaxian      DC     
     ## 4 Czarnian        DC     
     ## 5 Gorilla         DC     
     ## 6 Human-Vuldarian DC     
     ## # i 41 more rows
     ```
   
   
     \end{comment}



## Examinando *tibbles* intermediárias

* [O pacote `ViewPipeSteps`](https://github.com/daranzolin/ViewPipeSteps) serve para exibir (no console ou em *tabs* no RStudio) as *tibbles* que são resultados de cada passo em uma sequência de comandos montada com o *pipe* `%>%`.

* Instale o pacote com o comando

  
  ```r
  install.packages("ViewPipeSteps")
  ```

* Carregue o pacote com

  
  ```r
  library(ViewPipeSteps)
  ```

* Para exibir, no console, as *tibbles* intermediárias, acrescente `print_pipe_steps(all = TRUE)` após o último passo do *pipe*:

    
    ```r
    resultado <- bb_tidy %>% 
      group_by(artista, musica) %>% 
      summarize(media = sum(pos)/max(semana), .groups = 'drop') %>% 
      arrange(media) %>% 
      print_pipe_steps(all = TRUE)
    ```
    
    ```
    ## 1. bb_tidy
    ```
    
    ```
    ## # A tibble: 5.307 x 5
    ##   artista musica                  entrou     semana   pos
    ##   <chr>   <chr>                   <date>      <int> <dbl>
    ## 1 2 Pac   Baby Don't Cry (Keep... 2000-02-26      1    87
    ## 2 2 Pac   Baby Don't Cry (Keep... 2000-02-26      2    82
    ## 3 2 Pac   Baby Don't Cry (Keep... 2000-02-26      3    72
    ## 4 2 Pac   Baby Don't Cry (Keep... 2000-02-26      4    77
    ## 5 2 Pac   Baby Don't Cry (Keep... 2000-02-26      5    87
    ## 6 2 Pac   Baby Don't Cry (Keep... 2000-02-26      6    94
    ## # i 5.301 more rows
    ```
    
    ```
    ## 2. group_by(artista, musica)
    ```
    
    ```
    ## # A tibble: 5.307 x 5
    ##   artista musica                  entrou     semana   pos
    ##   <chr>   <chr>                   <date>      <int> <dbl>
    ## 1 2 Pac   Baby Don't Cry (Keep... 2000-02-26      1    87
    ## 2 2 Pac   Baby Don't Cry (Keep... 2000-02-26      2    82
    ## 3 2 Pac   Baby Don't Cry (Keep... 2000-02-26      3    72
    ## 4 2 Pac   Baby Don't Cry (Keep... 2000-02-26      4    77
    ## 5 2 Pac   Baby Don't Cry (Keep... 2000-02-26      5    87
    ## 6 2 Pac   Baby Don't Cry (Keep... 2000-02-26      6    94
    ## # i 5.301 more rows
    ```
    
    ```
    ## 3. summarize(media = sum(pos)/max(semana), .groups = "drop")
    ```
    
    ```
    ## # A tibble: 317 x 3
    ##   artista      musica                  media
    ##   <chr>        <chr>                   <dbl>
    ## 1 2 Pac        Baby Don't Cry (Keep...  85.4
    ## 2 2Ge+her      The Hardest Part Of ...  90  
    ## 3 3 Doors Down Kryptonite               26.5
    ## 4 3 Doors Down Loser                    67.1
    ## 5 504 Boyz     Wobble Wobble            56.2
    ## 6 98^0         Give Me Just One Nig...  37.6
    ## # i 311 more rows
    ```
    
    ```
    ## 4. arrange(media)
    ```
    
    ```
    ## # A tibble: 317 x 3
    ##   artista                          musica                  media
    ##   <chr>                            <chr>                   <dbl>
    ## 1 "Santana"                        Maria, Maria             10.5
    ## 2 "Madonna"                        Music                    13.5
    ## 3 "N'Sync"                         Bye Bye Bye              14.3
    ## 4 "Elliott, Missy \"Misdemeanor\"" Hot Boyz                 14.3
    ## 5 "Destiny's Child"                Independent Women Pa...  14.8
    ## 6 "Iglesias, Enrique"              Be With You              15.8
    ## # i 311 more rows
    ```

* Para exibir as *tibbles* intermediárias em *tabs* do RStudio (como com a função `View()`), você pode usar o *addin* `viewPipeChain`, que também faz parte deste pacote. Veja o exemplo [no site do pacote](https://github.com/daranzolin/ViewPipeSteps).

<!--chapter:end:tidyverse.Rmd-->

--- 
knit: "bookdown::render_book"
---


# Visualização com ggplot2 {#viz}

::: {.rmdtip latex=1}

Busque mais informações sobre os pacotes `tidyverse` e `ggplot2` [nas referências recomendadas](#refrec).

:::


## Vídeo 1

```{=latex}
\begin{center} \url{https://youtu.be/OBpNjqIIyhI} \end{center}
```


## Componentes de um gráfico ggplot2

### Geometrias e mapeamentos estéticos (*mappings*)

* Observe o gráfico abaixo, obtido de https://www.gapminder.org/downloads/updated-gapminder-world-poster-2015/.


\begin{center}\includegraphics[width=1\linewidth]{images/countries-1} \end{center}

* O gráfico mostra como, em cada país, a saúde (mais precisamente, a expectativa de vida) se relaciona com a riqueza (mais precisamente, o PIB *per capita*).

* Além da expectativa de vida e o do PIB *per capita*, o gráfico traz mais informações sobre cada país.

* Cada país é representado por um ponto (a [geometria]{.hl}).

* Informações sobre cada país são representadas por características do ponto correspondente (as [estéticas]{.hl}):

  ::: {style="width: 50%; margin: auto;"}
  
  | Variável            | Geometria | Estética  |
  |---------------------|-----------|-----------|
  | PIB *per capita*    | ponto     | posição x |
  | Expectativa de vida | ponto     | posição y |
  | População           | ponto     | tamanho   |
  | Continente          | ponto     | cor       |
  
  :::

* Você pode usar outras estéticas para representar informações:

  * Cor de preenchimento.
  * Cor do traço.
  * Tipo do traço (sólido, pontilhado, tracejado etc.).
  * Forma (círculo, quadrado, triângulo etc.).
  * Opacidade.
  * etc.

* Você pode usar outras geometrias:

  * Linhas.
  * Barras ou colunas.
  * Caixas.
  * etc.
  
  
### Escalas (*scales*)

* As escalas controlam os detalhes da aparência da geometria e do mapeamento (eixos, cores etc.).

* Os eixos do gráfico acima são escalas [contínuas]{.hl}, com valores reais.

* Observe o eixo horizontal. Os valores não aumentam linearmente, mas sim exponencialmente: cada passo à direita equivale a *dobrar* o valor do PIB. O eixo horizontal segue uma [escala logarítmica]{.hl}.

* Os tamanhos dos pontos formam uma escala [discreta]{.hl}, com $4$ valores possíveis (veja a legenda no canto inferior direito do gráfico).

* As cores também formam uma escala discreta.


### Rótulos (*labels*)

* O gráfico também representa informação na forma de texto.

* Além de rótulos (por exemplo, o texto que identifica cada eixo), [o texto também pode, ele mesmo, ser uma geometria, com suas próprias estéticas:]{.hl} observe como o nome de cada país é escrito em um tamanho proporcional à sua população.


### Outros componentes

* Coordenadas:

  * Este gráfico usa [coordenadas cartesianas]{.hl}, com eixos $x$ e $y$.
  
  * Existem gráficos que usam um sistema de [coordenadas polares]{.hl}.

* Temas:

  * Incluem todos os elementos "decorativos": cor de fundo, linhas de grade, etc. Ajudam a facilitar a leitura e a interpretação.
  
  * No gráfico acima, um detalhe interessante do tema é a divisão de cada eixo em segmentos claros e segmentos escuros.
  
* Legendas (*guides*).

* Facetas:

  * Às vezes, um gráfico é composto por múltiplos subgráficos.
  
  * Cada subgráfico é uma [faceta]{.hl}.
  
  * Facetas evitam que informações demais sejam apresentadas no mesmo lugar.


## Conjunto de dados { #mamiferos }

* Nossos exemplos de gráficos vão usar dados sobre o sono de diversos mamíferos. 

* O conjunto de dados se chama `msleep` e está incluído no pacote `ggplot2`.

* Para ver a documentação, digite

  
  ```r
  library(ggplot2)
  ?msleep
  ```

* Vamos atribuir o conjunto de dados à variável `df`:

  
  ```r
  df <- msleep
  df
  ```
  
  ```
  ## # A tibble: 83 x 11
  ##   name             genus vore  order conservation sleep_total sleep_rem
  ##   <chr>            <chr> <chr> <chr> <chr>              <dbl>     <dbl>
  ## 1 Cheetah          Acin~ carni Carn~ lc                  12.1      NA  
  ## 2 Owl monkey       Aotus omni  Prim~ <NA>                17         1.8
  ## 3 Mountain beaver  Aplo~ herbi Rode~ nt                  14.4       2.4
  ## 4 Greater short-t~ Blar~ omni  Sori~ lc                  14.9       2.3
  ## 5 Cow              Bos   herbi Arti~ domesticated         4         0.7
  ## 6 Three-toed sloth Brad~ herbi Pilo~ <NA>                14.4       2.2
  ## # i 77 more rows
  ## # i 4 more variables: sleep_cycle <dbl>, awake <dbl>, brainwt <dbl>,
  ## #   bodywt <dbl>
  ```

* Vamos examinar a estrutura --- usando R base:

  

  
  ```r
  str(df)
  ```
  
  ```
  ## tibble [83 x 11] (S3: tbl_df/tbl/data.frame)
  ##  $ name        : chr [1:83] "Cheetah" "Owl monkey" "Mountain beaver" ...
  ##  $ genus       : chr [1:83] "Acinonyx" "Aotus" "Aplodontia" ...
  ##  $ vore        : chr [1:83] "carni" "omni" "herbi" ...
  ##  $ order       : chr [1:83] "Carnivora" "Primates" "Rodentia" ...
  ##  $ conservation: chr [1:83] "lc" NA "nt" ...
  ##  $ sleep_total : num [1:83] 12,1 17 14,4 14,9 4 14,4 8,7 7 ...
  ##  $ sleep_rem   : num [1:83] NA 1,8 2,4 2,3 0,7 2,2 1,4 NA ...
  ##  $ sleep_cycle : num [1:83] NA NA NA 0,133 ...
  ##  $ awake       : num [1:83] 11,9 7 9,6 9,1 20 9,6 15,3 17 ...
  ##  $ brainwt     : num [1:83] NA 0,0155 NA 0,00029 0,423 NA NA NA ...
  ##  $ bodywt      : num [1:83] 50 0,48 1,35 0,019 ...
  ```

* Podemos usar `glimpse`, uma função do `tidyverse`:

  
  ```r
  glimpse(df)
  ```
  
  ```
  ## Rows: 83
  ## Columns: 11
  ## $ name         <chr> "Cheetah", "Owl monkey", "Mountain beaver", "Gre~
  ## $ genus        <chr> "Acinonyx", "Aotus", "Aplodontia", "Blarina", "B~
  ## $ vore         <chr> "carni", "omni", "herbi", "omni", "herbi", "herb~
  ## $ order        <chr> "Carnivora", "Primates", "Rodentia", "Soricomorp~
  ## $ conservation <chr> "lc", NA, "nt", "lc", "domesticated", NA, "vu", ~
  ## $ sleep_total  <dbl> 12,1, 17,0, 14,4, 14,9, 4,0, 14,4, 8,7, 7,0, 10,~
  ## $ sleep_rem    <dbl> NA, 1,8, 2,4, 2,3, 0,7, 2,2, 1,4, NA, 2,9, NA, 0~
  ## $ sleep_cycle  <dbl> NA, NA, NA, 0,1333333, 0,6666667, 0,7666667, 0,3~
  ## $ awake        <dbl> 11,9, 7,0, 9,6, 9,1, 20,0, 9,6, 15,3, 17,0, 13,9~
  ## $ brainwt      <dbl> NA, 0,01550, NA, 0,00029, 0,42300, NA, NA, NA, 0~
  ## $ bodywt       <dbl> 50,000, 0,480, 1,350, 0,019, 600,000, 3,850, 20,~
  ```

* Para examinar só as primeiras linhas do *data frame*:

  
  ```r
  head(df)
  ```
  
  ```
  ## # A tibble: 6 x 11
  ##   name             genus vore  order conservation sleep_total sleep_rem
  ##   <chr>            <chr> <chr> <chr> <chr>              <dbl>     <dbl>
  ## 1 Cheetah          Acin~ carni Carn~ lc                  12.1      NA  
  ## 2 Owl monkey       Aotus omni  Prim~ <NA>                17         1.8
  ## 3 Mountain beaver  Aplo~ herbi Rode~ nt                  14.4       2.4
  ## 4 Greater short-t~ Blar~ omni  Sori~ lc                  14.9       2.3
  ## 5 Cow              Bos   herbi Arti~ domesticated         4         0.7
  ## 6 Three-toed sloth Brad~ herbi Pilo~ <NA>                14.4       2.2
  ## # i 4 more variables: sleep_cycle <dbl>, awake <dbl>, brainwt <dbl>,
  ## #   bodywt <dbl>
  ```

* Para examinar o *data frame* interativamente:

  
  ```r
  view(df)
  ```

* Podemos produzir um sumário dos dados usando o pacote *summarytools* (que já foi carregado neste documento):

  
  ```r
  df %>% dfSummary() %>% print()
  ```
  
  
  +---------------+--------------------------------+----------------------+----------+
  | Variável      | Estatísticas / Valores         | Freqs (% de Válidos) | Faltante |
  +===============+================================+======================+==========+
  | name\         | 1\. African elephant\          | 1 ( 1,2%)\           | 0\       |
  | [character]   | 2\. African giant pouched rat\ | 1 ( 1,2%)\           | (0,0%)   |
  |               | 3\. African striped mouse\     | 1 ( 1,2%)\           |          |
  |               | 4\. Arctic fox\                | 1 ( 1,2%)\           |          |
  |               | 5\. Arctic ground squirrel\    | 1 ( 1,2%)\           |          |
  |               | 6\. Asian elephant\            | 1 ( 1,2%)\           |          |
  |               | 7\. Baboon\                    | 1 ( 1,2%)\           |          |
  |               | 8\. Big brown bat\             | 1 ( 1,2%)\           |          |
  |               | 9\. Bottle-nosed dolphin\      | 1 ( 1,2%)\           |          |
  |               | 10\. Brazilian tapir\          | 1 ( 1,2%)\           |          |
  |               | [ 73 outros ]                  | 73 (88,0%)           |          |
  +---------------+--------------------------------+----------------------+----------+
  | genus\        | 1\. Panthera\                  | 3 ( 3,6%)\           | 0\       |
  | [character]   | 2\. Spermophilus\              | 3 ( 3,6%)\           | (0,0%)   |
  |               | 3\. Equus\                     | 2 ( 2,4%)\           |          |
  |               | 4\. Vulpes\                    | 2 ( 2,4%)\           |          |
  |               | 5\. Acinonyx\                  | 1 ( 1,2%)\           |          |
  |               | 6\. Aotus\                     | 1 ( 1,2%)\           |          |
  |               | 7\. Aplodontia\                | 1 ( 1,2%)\           |          |
  |               | 8\. Blarina\                   | 1 ( 1,2%)\           |          |
  |               | 9\. Bos\                       | 1 ( 1,2%)\           |          |
  |               | 10\. Bradypus\                 | 1 ( 1,2%)\           |          |
  |               | [ 67 outros ]                  | 67 (80,7%)           |          |
  +---------------+--------------------------------+----------------------+----------+
  | vore\         | 1\. carni\                     | 19 (25,0%)\          | 7\       |
  | [character]   | 2\. herbi\                     | 32 (42,1%)\          | (8,4%)   |
  |               | 3\. insecti\                   | 5 ( 6,6%)\           |          |
  |               | 4\. omni                       | 20 (26,3%)           |          |
  +---------------+--------------------------------+----------------------+----------+
  | order\        | 1\. Rodentia\                  | 22 (26,5%)\          | 0\       |
  | [character]   | 2\. Carnivora\                 | 12 (14,5%)\          | (0,0%)   |
  |               | 3\. Primates\                  | 12 (14,5%)\          |          |
  |               | 4\. Artiodactyla\              | 6 ( 7,2%)\           |          |
  |               | 5\. Soricomorpha\              | 5 ( 6,0%)\           |          |
  |               | 6\. Cetacea\                   | 3 ( 3,6%)\           |          |
  |               | 7\. Hyracoidea\                | 3 ( 3,6%)\           |          |
  |               | 8\. Perissodactyla\            | 3 ( 3,6%)\           |          |
  |               | 9\. Chiroptera\                | 2 ( 2,4%)\           |          |
  |               | 10\. Cingulata\                | 2 ( 2,4%)\           |          |
  |               | [ 9 outros ]                   | 13 (15,7%)           |          |
  +---------------+--------------------------------+----------------------+----------+
  | conservation\ | 1\. cd\                        | 2 ( 3,7%)\           | 29\      |
  | [character]   | 2\. domesticated\              | 10 (18,5%)\          | (34,9%)  |
  |               | 3\. en\                        | 4 ( 7,4%)\           |          |
  |               | 4\. lc\                        | 27 (50,0%)\          |          |
  |               | 5\. nt\                        | 4 ( 7,4%)\           |          |
  |               | 6\. vu                         | 7 (13,0%)            |          |
  +---------------+--------------------------------+----------------------+----------+
  | sleep_total\  | Média (dp) : 10,4 (4,5)\       | 65 valores distintos | 0\       |
  | [numeric]     | mín < mediana < máx:\          |                      | (0,0%)   |
  |               | 1,9 < 10,1 < 19,9\             |                      |          |
  |               | IQE (CV) : 5,9 (0,4)           |                      |          |
  +---------------+--------------------------------+----------------------+----------+
  | sleep_rem\    | Média (dp) : 1,9 (1,3)\        | 32 valores distintos | 22\      |
  | [numeric]     | mín < mediana < máx:\          |                      | (26,5%)  |
  |               | 0,1 < 1,5 < 6,6\               |                      |          |
  |               | IQE (CV) : 1,5 (0,7)           |                      |          |
  +---------------+--------------------------------+----------------------+----------+
  | sleep_cycle\  | Média (dp) : 0,4 (0,4)\        | 22 valores distintos | 51\      |
  | [numeric]     | mín < mediana < máx:\          |                      | (61,4%)  |
  |               | 0,1 < 0,3 < 1,5\               |                      |          |
  |               | IQE (CV) : 0,4 (0,8)           |                      |          |
  +---------------+--------------------------------+----------------------+----------+
  | awake\        | Média (dp) : 13,6 (4,5)\       | 65 valores distintos | 0\       |
  | [numeric]     | mín < mediana < máx:\          |                      | (0,0%)   |
  |               | 4,1 < 13,9 < 22,1\             |                      |          |
  |               | IQE (CV) : 5,9 (0,3)           |                      |          |
  +---------------+--------------------------------+----------------------+----------+
  | brainwt\      | Média (dp) : 0,3 (1)\          | 53 valores distintos | 27\      |
  | [numeric]     | mín < mediana < máx:\          |                      | (32,5%)  |
  |               | 0 < 0 < 5,7\                   |                      |          |
  |               | IQE (CV) : 0,1 (3,5)           |                      |          |
  +---------------+--------------------------------+----------------------+----------+
  | bodywt\       | Média (dp) : 166,1 (786,8)\    | 82 valores distintos | 0\       |
  | [numeric]     | mín < mediana < máx:\          |                      | (0,0%)   |
  |               | 0 < 1,7 < 6654\                |                      |          |
  |               | IQE (CV) : 41,6 (4,7)          |                      |          |
  +---------------+--------------------------------+----------------------+----------+

* Vemos que há muitos `NA` em diversas variáveis. Para nossos exemplos simples de visualização, vamos usar as colunas

  * `name` 
  * `genus` 
  * `order` 
  * `sleep_total` 
  * `awake` 
  * `bodywt` 
  * `brainwt` 

* Mas... a coluna que mostra a dieta (`vore`) tem só 7 `NA`. Quais são?

  
  ```r
  df %>% 
    filter(is.na(vore)) %>% 
    select(name)
  ```
  
  ```
  ## # A tibble: 7 x 1
  ##   name           
  ##   <chr>          
  ## 1 Vesper mouse   
  ## 2 Desert hedgehog
  ## 3 Deer mouse     
  ## 4 Phalanger      
  ## 5 Rock hyrax     
  ## 6 Mole rat       
  ## # i 1 more row
  ```

* OK. Vamos manter a coluna `vore` também, apesar dos `NA`. Quando formos usar esta variável, tomaremos cuidado.

* Também... a coluna `bodywt` tem 0 como valor mínimo. Como assim?

  
  ```r
  df %>% 
    filter(bodywt < 1) %>% 
    select(name, bodywt) %>% 
    arrange(bodywt)
  ```
  
  ```
  ## # A tibble: 35 x 2
  ##   name                       bodywt
  ##   <chr>                       <dbl>
  ## 1 Lesser short-tailed shrew   0.005
  ## 2 Little brown bat            0.01 
  ## 3 Greater short-tailed shrew  0.019
  ## 4 Deer mouse                  0.021
  ## 5 House mouse                 0.022
  ## 6 Big brown bat               0.023
  ## # i 29 more rows
  ```

* Ah, sem problema. A função `dfSummary` arredondou estes pesos para 0. Os valores de verdade ainda estão na *tibble*.

* Vamos criar uma *tibble* nova, só com as colunas que nos interessam:

  
  ```r
  sono <- df %>% 
    select(
      name, order, genus, vore, bodywt, 
      brainwt, awake, sleep_total
    )
  ```

* Vamos ver o sumário:

  
  ```r
  sono %>% dfSummary() %>% print()
  ```
  
  
  +--------------+--------------------------------+----------------------+----------+
  | Variável     | Estatísticas / Valores         | Freqs (% de Válidos) | Faltante |
  +==============+================================+======================+==========+
  | name\        | 1\. African elephant\          | 1 ( 1,2%)\           | 0\       |
  | [character]  | 2\. African giant pouched rat\ | 1 ( 1,2%)\           | (0,0%)   |
  |              | 3\. African striped mouse\     | 1 ( 1,2%)\           |          |
  |              | 4\. Arctic fox\                | 1 ( 1,2%)\           |          |
  |              | 5\. Arctic ground squirrel\    | 1 ( 1,2%)\           |          |
  |              | 6\. Asian elephant\            | 1 ( 1,2%)\           |          |
  |              | 7\. Baboon\                    | 1 ( 1,2%)\           |          |
  |              | 8\. Big brown bat\             | 1 ( 1,2%)\           |          |
  |              | 9\. Bottle-nosed dolphin\      | 1 ( 1,2%)\           |          |
  |              | 10\. Brazilian tapir\          | 1 ( 1,2%)\           |          |
  |              | [ 73 outros ]                  | 73 (88,0%)           |          |
  +--------------+--------------------------------+----------------------+----------+
  | order\       | 1\. Rodentia\                  | 22 (26,5%)\          | 0\       |
  | [character]  | 2\. Carnivora\                 | 12 (14,5%)\          | (0,0%)   |
  |              | 3\. Primates\                  | 12 (14,5%)\          |          |
  |              | 4\. Artiodactyla\              | 6 ( 7,2%)\           |          |
  |              | 5\. Soricomorpha\              | 5 ( 6,0%)\           |          |
  |              | 6\. Cetacea\                   | 3 ( 3,6%)\           |          |
  |              | 7\. Hyracoidea\                | 3 ( 3,6%)\           |          |
  |              | 8\. Perissodactyla\            | 3 ( 3,6%)\           |          |
  |              | 9\. Chiroptera\                | 2 ( 2,4%)\           |          |
  |              | 10\. Cingulata\                | 2 ( 2,4%)\           |          |
  |              | [ 9 outros ]                   | 13 (15,7%)           |          |
  +--------------+--------------------------------+----------------------+----------+
  | genus\       | 1\. Panthera\                  | 3 ( 3,6%)\           | 0\       |
  | [character]  | 2\. Spermophilus\              | 3 ( 3,6%)\           | (0,0%)   |
  |              | 3\. Equus\                     | 2 ( 2,4%)\           |          |
  |              | 4\. Vulpes\                    | 2 ( 2,4%)\           |          |
  |              | 5\. Acinonyx\                  | 1 ( 1,2%)\           |          |
  |              | 6\. Aotus\                     | 1 ( 1,2%)\           |          |
  |              | 7\. Aplodontia\                | 1 ( 1,2%)\           |          |
  |              | 8\. Blarina\                   | 1 ( 1,2%)\           |          |
  |              | 9\. Bos\                       | 1 ( 1,2%)\           |          |
  |              | 10\. Bradypus\                 | 1 ( 1,2%)\           |          |
  |              | [ 67 outros ]                  | 67 (80,7%)           |          |
  +--------------+--------------------------------+----------------------+----------+
  | vore\        | 1\. carni\                     | 19 (25,0%)\          | 7\       |
  | [character]  | 2\. herbi\                     | 32 (42,1%)\          | (8,4%)   |
  |              | 3\. insecti\                   | 5 ( 6,6%)\           |          |
  |              | 4\. omni                       | 20 (26,3%)           |          |
  +--------------+--------------------------------+----------------------+----------+
  | bodywt\      | Média (dp) : 166,1 (786,8)\    | 82 valores distintos | 0\       |
  | [numeric]    | mín < mediana < máx:\          |                      | (0,0%)   |
  |              | 0 < 1,7 < 6654\                |                      |          |
  |              | IQE (CV) : 41,6 (4,7)          |                      |          |
  +--------------+--------------------------------+----------------------+----------+
  | brainwt\     | Média (dp) : 0,3 (1)\          | 53 valores distintos | 27\      |
  | [numeric]    | mín < mediana < máx:\          |                      | (32,5%)  |
  |              | 0 < 0 < 5,7\                   |                      |          |
  |              | IQE (CV) : 0,1 (3,5)           |                      |          |
  +--------------+--------------------------------+----------------------+----------+
  | awake\       | Média (dp) : 13,6 (4,5)\       | 65 valores distintos | 0\       |
  | [numeric]    | mín < mediana < máx:\          |                      | (0,0%)   |
  |              | 4,1 < 13,9 < 22,1\             |                      |          |
  |              | IQE (CV) : 5,9 (0,3)           |                      |          |
  +--------------+--------------------------------+----------------------+----------+
  | sleep_total\ | Média (dp) : 10,4 (4,5)\       | 65 valores distintos | 0\       |
  | [numeric]    | mín < mediana < máx:\          |                      | (0,0%)   |
  |              | 1,9 < 10,1 < 19,9\             |                      |          |
  |              | IQE (CV) : 5,9 (0,4)           |                      |          |
  +--------------+--------------------------------+----------------------+----------+


## Gráficos de dispersão (*scatter plots*)

* Servem para visualizar a *relação* entre [duas variáveis quantitativas.]{.hl}

* [Essa relação *não* é necessariamente de causa e efeito. ]{.hl}

* Isto é, a variável do eixo horizontal não determina, necessariamente, os valores da variável do eixo vertical.
  
* Pense em [associação]{.hl}, [correlação]{.hl}, não em causalidade.

* Troque as variáveis de eixo, se ajudar a deixar isto claro.


### Horas de sono e peso corporal

* Como as variáveis `sleep_total` e `bodywt` estão relacionadas?

  
  ```r
  sono %>% 
    ggplot(aes(x = bodywt, y = sleep_total))
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/sono-peso-plot-1-1} \end{center}

* O que houve? Cadê os pontos?

* O problema foi que só especificamos o mapeamento estético (com `aes`, que são as iniciais de *aesthetics*). [Faltou a geometria.]{.hl}

  
  ```r
  sono %>% 
    ggplot(aes(x = bodywt, y = sleep_total)) +
    geom_point()
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/sono-peso-plot-2-1} \end{center}

* Que horror. 

* A única coisa que percebemos aqui é que os mamíferos muito pesados dormem menos de $5$ horas por noite.

* Estes animais muito pesados estão estragando a escala do eixo $x$.

* Que animais são estes?

  
  ```r
  sono %>% 
    filter(bodywt > 250) %>% 
    select(name, bodywt) %>% 
    arrange(bodywt)
  ```
  
  ```
  ## # A tibble: 6 x 2
  ##   name             bodywt
  ##   <chr>             <dbl>
  ## 1 Horse              521 
  ## 2 Cow                600 
  ## 3 Pilot whale        800 
  ## 4 Giraffe            900.
  ## 5 Asian elephant    2547 
  ## 6 African elephant  6654
  ```

* Além disso, há muitos pontos sobrepostos. Em bom português, temos um problema de *overplotting*. 

* Existem diversas maneiras de lidar com isso.

* A primeira delas é [alterando a opacidade dos pontos]{.hl}. Isto é um ajuste na geometria apenas, pois a opacidade, aqui, não representa informação nenhuma.

  
  ```r
  sono %>% 
    ggplot(aes(x = bodywt, y = sleep_total)) +
      geom_point(alpha = 0.2)
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/sono-peso-plot-alfa-1} \end{center}

* Outra maneira é usar `geom_jitter` em vez de `geom_point`. "*Jitter*" significa "tremer". As posições dos pontos são ligeiramente perturbadas, para evitar colisões. Perdemos precisão, mas a visualização fica melhor.

  
  ```r
  sono %>% 
    ggplot(aes(x = bodywt, y = sleep_total)) +
      geom_jitter(width = 100)
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/sono-peso-plot-jitter-1} \end{center}


* Vamos mudar os limites do gráfico para nos concentrarmos nos animais menos pesados. Observe que [isto é um ajuste na escala]{.hl}.

  
  ```r
  sono %>% 
    ggplot(aes(x = bodywt, y = sleep_total)) +
      geom_point() +
      scale_x_continuous(limits = c(0, 200))
  ```
  
  ```
  ## Warning: Removed 7 rows containing missing values (`geom_point()`).
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/sono-peso-plot-3-1} \end{center}

* Nestes limites, a relação entre horas de sono e peso não é mais tão pronunciada.


### Horas de sono e peso corporal para animais pequenos

* Vamos restringir o gráfico a animais com no máximo $5$kg.

  
  ```r
  limite <- 5
  ```

* Em vez de mudar a escala do gráfico, vamos filtrar as linhas do *data frame*:

  
  ```r
  sono %>% 
    filter(bodywt < limite) %>% 
    ggplot(aes(x = bodywt, y = sleep_total)) +
      geom_point()
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/sono-peso-plot-pequenos-1} \end{center}

### Incluindo a dieta

* Com a estética `color`. Observe como a legenda aparece automaticamente.

  
  ```r
  sono %>% 
    filter(bodywt < limite) %>% 
    ggplot(aes(x = bodywt, y = sleep_total, color = vore)) +
      geom_point()
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/plot-sono-peso-dieta-1} \end{center}


### A estética pode ser especificada na `geom`

* Compare com o código anterior.

  
  ```r
  sono %>% 
    filter(bodywt < limite) %>% 
    ggplot() +
      geom_point(aes(x = bodywt, y = sleep_total, color = vore))
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/plot-sono-peso-dieta-geom-1} \end{center}

* Fazendo deste modo, a estética só vale para uma geometria. Se você acrescentar outras geometrias (linhas, por exemplo), a estética não valerá para elas.


### Aparência fixa ou dependendo de variável?

* Se for fixa, não é estética. Não representa informação.

* Se depender de variável, é estética. Representa informação.

* Compare o último *chunk* acima com:

  
  ```r
  sono %>% 
    filter(bodywt < limite) %>% 
    ggplot() +
      geom_point(aes(x = bodywt, y = sleep_total), color = 'blue')
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/plot-sono-peso-cor-1} \end{center}

* Se for uma estética, precisa estar [associada a uma variável]{.hl}, não a um valor fixo. Um erro comum seria fazer:

  
  ```r
  sono %>% 
    filter(bodywt < limite) %>% 
    ggplot() +
      geom_point(aes(x = bodywt, y = sleep_total, color = 'blue'))
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/plot-sono-peso-cor-erro-1} \end{center}


### Uma correlação mais clara

* Peso cerebral versus peso corporal:

  
  ```r
  sono %>% 
    ggplot(aes(x = bodywt, y = brainwt)) +
      geom_point()
  ```
  
  ```
  ## Warning: Removed 27 rows containing missing values (`geom_point()`).
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/cerebro-corpo-1} \end{center}

* A mensagem de aviso (*warning*) diz que há $27$ valores faltantes (`NA`) em `bodywt` ou `brainwt`. De fato:

  
  ```r
  sono %>% 
    filter(is.na(bodywt)) %>% 
    count()
  ```
  
  ```
  ## # A tibble: 1 x 1
  ##       n
  ##   <int>
  ## 1     0
  ```

  
  ```r
  sono %>% 
    filter(is.na(brainwt)) %>% 
    count()
  ```
  
  ```
  ## # A tibble: 1 x 1
  ##       n
  ##   <int>
  ## 1    27
  ```

* Vamos restringir aos animais mais leves e mudar a opacidade:

  
  ```r
  sono %>% 
    filter(bodywt < limite) %>% 
    ggplot(aes(x = bodywt, y = brainwt)) +
      geom_point(alpha = .5)
  ```
  
  ```
  ## Warning: Removed 18 rows containing missing values (`geom_point()`).
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/cerebro-corpo-2-1} \end{center}

* Vamos incluir horas de sono e dieta. Observe as estéticas usadas.

  
  ```r
  sono %>% 
    filter(bodywt < limite) %>% 
    ggplot(
      aes(
        x = bodywt, 
        y = brainwt,
        size = sleep_total,
        color = vore
      )
    ) +
      geom_point(alpha = .5)
  ```
  
  ```
  ## Warning: Removed 18 rows containing missing values (`geom_point()`).
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/cerebro-corpo-3-1} \end{center}

* Vamos mudar a escala dos tamanhos e incluir rótulos:

  
  ```r
  grafico <- sono %>% 
    filter(bodywt < limite) %>% 
    ggplot(
      aes(
        x = bodywt, 
        y = brainwt,
        size = sleep_total,
        color = vore
      )
    ) +
      geom_point(alpha = .5) +
      scale_size(
        breaks = seq(0, 24, 4)
      ) +
      labs(
        title = 'Peso do cérebro versus peso corporal',
        subtitle = paste0(
          'para mamíferos com menos de ', 
          limite, 
          ' kg'
        ),
        caption = 'Fonte: dataset `msleep`',
        x = 'Peso corporal (kg)',
        y = 'Peso do\n cérebro (kg)',
        color = 'Dieta',
        size = 'Horas\nde sono'
      )
      
  grafico
  ```
  
  ```
  ## Warning: Removed 18 rows containing missing values (`geom_point()`).
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/cerebro-corpo-4-1} \end{center}

* Vamos mudar as cores usadas para a dieta, usando uma escala diferente.

  
  ```r
  grafico2 <- grafico +
    scale_color_discrete(
      palette = 'RdBu',
      na.value = 'black',
      type = scale_color_brewer
    )
  
  grafico2
  ```
  
  ```
  ## Warning: Removed 18 rows containing missing values (`geom_point()`).
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-174-1} \end{center}

* Observe como usamos o gráfico já salvo na variável `grafico` e simplesmente acrescentamos a nova escala. Este tipo de "montagem" de gráficos `ggplot2` é bem conveniente, para evitar repetição de código.

* Um último ajuste na aparência: os pontos na legenda "Dieta" estão pequenos demais. Quase não identificamos as cores deles. 

  Vamos usar a função `guides` para modificar (*override*) a estética `color` --- [apenas na legenda, não nos pontos mostrados no gráfico, cujos tamanhos representam o número de horas de sono]{.hl} --- tornando o tamanho maior. [Leia mais sobre `override.aes` neste *link* (em inglês)](https://ggplot2-book.org/scale-colour.html#guide_legend).
  
  
  ```r
  grafico3 <- grafico2 +
    guides(color = guide_legend(override.aes = list(size = 10)))
    
  grafico3
  ```
  
  ```
  ## Warning: Removed 18 rows containing missing values (`geom_point()`).
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-175-1} \end{center}

* Agora podemos finalmente comentar sobre a informação que o gráfico mostra sobre os dados:

  * De fato, existe uma correlação entre peso cerebral e peso corporal: quanto maior o peso corporal, maior o peso cerebral. Nada surprenndente.
  
  * []{#grafico4} Podemos fazer o `ggplot2` traçar uma reta de regressão com a geometria `geom_smooth`. Vamos falar mais sobre correlação [em um capítulo futuro](#correlacao). 
  
    
    ```r
    grafico4 <- grafico3 +
      geom_smooth(
        aes(group = 1), 
        show.legend = FALSE,
        method = 'lm', 
        se = FALSE
      )
    
    grafico4
    ```
    
    ```
    ## Warning: Using `size` aesthetic for lines was deprecated in ggplot2 3.4.0.
    ## i Please use `linewidth` instead.
    ## This warning is displayed once every 8 hours.
    ## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was generated.
    ```
    
    ```
    ## `geom_smooth()` using formula = 'y ~ x'
    ```
    
    ```
    ## Warning: Removed 18 rows containing non-finite values
    ## (`stat_smooth()`).
    ```
    
    ```
    ## Warning: The following aesthetics were dropped during statistical transformation: size, colour
    ## i This can happen when ggplot fails to infer the correct grouping structure in the data.
    ## i Did you forget to specify a `group` aesthetic or to convert a numerical variable into a factor?
    ```
    
    ```
    ## Warning: Removed 18 rows containing missing values (`geom_point()`).
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-176-1} \end{center}
  
  * Todos os carnívoros têm peso corporal maior que $1$kg e peso cerebral maior ou igual a $10$g.
  
  * Só um carnívoro dorme $8$ horas ou menos. Qual?
  
  * Todos os insetívoros --- com exceção de um (qual?) --- são muito leves e dormem muito.
  
  * Todos os onívoros têm menos de $2$kg de peso corporal e $20$g ou menos de peso cerebral.


## Vídeo 2

```{=latex}
\begin{center} \url{https://youtu.be/c-LoZ9e8xWc} \end{center}
```

## Histogramas e cia.

* A idéia agora é [agrupar indivíduos em classes,]{.hl} dependendo do valor de uma variável quantitativa.


### Distribuições de frequência

* Vamos nos concentrar nas horas de sono.

  
  ```r
  sono$sleep_total
  ```
  
  ```
  ##  [1] 12,1 17,0 14,4 14,9  4,0 14,4  8,7  7,0 10,1  3,0  5,3  9,4 10,0
  ## [14] 12,5 10,3  8,3  9,1 17,4  5,3 18,0  3,9 19,7  2,9  3,1 10,1 10,9
  ## [27] 14,9 12,5  9,8  1,9  2,7  6,2  6,3  8,0  9,5  3,3 19,4 10,1 14,2
  ## [40] 14,3 12,8 12,5 19,9 14,6 11,0  7,7 14,5  8,4  3,8  9,7 15,8 10,4
  ## [53] 13,5  9,4 10,3 11,0 11,5 13,7  3,5  5,6 11,1 18,1  5,4 13,0  8,7
  ## [66]  9,6  8,4 11,3 10,6 16,6 13,8 15,9 12,8  9,1  8,6 15,8  4,4 15,6
  ## [79]  8,9  5,2  6,3 12,5  9,8
  ```

* Antes de montar o histograma, vamos construir uma [distribuição de frequência.]{.hl}

* A [amplitude]{.hl} é a diferença entre o valor máximo e o valor mínimo. A função `range` não retorna a amplitude, mas sim os valores mínimo e máximo:

  
  ```r
  sono$sleep_total %>% range()
  ```
  
  ```
  ## [1]  1,9 19,9
  ```

* Vamos decidir que cada classe vai ter $2$ horas. A função `cut` substitui os valores do vetor pelos nomes das classes:

  
  ```r
  sono$sleep_total %>% 
    cut(breaks = seq(0, 20, 2), right = FALSE)
  ```
  
  ```
  ##  [1] [12,14) [16,18) [14,16) [14,16) [4,6)   [14,16) [8,10)  [6,8)  
  ##  [9] [10,12) [2,4)   [4,6)   [8,10)  [10,12) [12,14) [10,12) [8,10) 
  ## [17] [8,10)  [16,18) [4,6)   [18,20) [2,4)   [18,20) [2,4)   [2,4)  
  ## [25] [10,12) [10,12) [14,16) [12,14) [8,10)  [0,2)   [2,4)   [6,8)  
  ## [33] [6,8)   [8,10)  [8,10)  [2,4)   [18,20) [10,12) [14,16) [14,16)
  ## [41] [12,14) [12,14) [18,20) [14,16) [10,12) [6,8)   [14,16) [8,10) 
  ## [49] [2,4)   [8,10)  [14,16) [10,12) [12,14) [8,10)  [10,12) [10,12)
  ## [57] [10,12) [12,14) [2,4)   [4,6)   [10,12) [18,20) [4,6)   [12,14)
  ## [65] [8,10)  [8,10)  [8,10)  [10,12) [10,12) [16,18) [12,14) [14,16)
  ## [73] [12,14) [8,10)  [8,10)  [14,16) [4,6)   [14,16) [8,10)  [4,6)  
  ## [81] [6,8)   [12,14) [8,10) 
  ## 10 Levels: [0,2) [2,4) [4,6) [6,8) [8,10) [10,12) [12,14) ... [18,20)
  ```

* A função `table` faz a contagem dos elementos de cada classe:

  
  ```r
  sono$sleep_total %>%  
    cut(breaks = seq(0, 20, 2), right = FALSE) %>% 
    table(dnn = 'Horas de sono') %>% 
    as.data.frame()
  ```
  
  ```
  ## # A tibble: 10 x 2
  ##   Horas.de.sono  Freq
  ##   <fct>         <int>
  ## 1 [0,2)             1
  ## 2 [2,4)             8
  ## 3 [4,6)             7
  ## 4 [6,8)             5
  ## 5 [8,10)           17
  ## 6 [10,12)          14
  ## # i 4 more rows
  ```

### Histograma

* Na verdade, o `ggplot2` já faz esses cálculos para nós.

* O *default* é criar $30$ classes (*bins*):

  
  ```r
  sono %>% 
    ggplot(aes(x = sleep_total)) +
      geom_histogram()
  ```
  
  ```
  ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/hist-sono1-1} \end{center}

* []{#histograma1} Vamos mudar isto passando um vetor de limites das classes (*breaks*). Vamos acrescentar rótulos também: 

  
  ```r
  sono %>% 
    ggplot(aes(x = sleep_total)) +
      geom_histogram(breaks = seq(0, 20, 2)) +
      scale_x_continuous(breaks = seq(0, 20, 2)) +
      labs(
        title = 'Horas de sono de diversos mamíferos',
        x = 'horas de sono',
        y = NULL,
        caption = 'Fonte: dataset `msleep`'
      )
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/hist-sono2-1} \end{center}

* Nossas impressões:

  * A classe que mais tem elementos é a de $8$ a $10$ horas.
  
  * A distribuição é mais ou menos simétrica. 
  
  * A distribuição tem forma aproximada de sino: há poucos mamíferos com valores extremos de horas de sono; a maioria está próxima do valor médio:
  
    
    ```r
    mean(sono$sleep_total)
    ```
    
    ```
    ## [1] 10,43373
    ```
  

### Polígono de frequência

* Em vez das barras do histograma, podemos desenhar uma linha ligando seus topos.

* O resultado é um [polígono de frequência]{.hl}.

  
  ```r
  pf <- sono %>% 
    ggplot(aes(x = sleep_total)) +
      geom_freqpoly(breaks = seq(0, 20, 2), color = 'red') +
      scale_x_continuous(breaks = seq(0, 20, 2))
      
  pf
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/hist-freqpoly-1} \end{center}

* Vamos sobrepor o polígono de frequência ao histograma, para deixar claro o que está acontecendo:

  
  ```r
  pf + geom_histogram(breaks = seq(0, 20, 2), alpha = .3)
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/hist-freqpoly2-1} \end{center}


## Ogiva

* A ogiva é um gráfico que mostra a [frequência acumulada]{.hl}: para cada valor $v$ da variável no eixo $x$, a proporção de indivíduos com valor menor ou igual a $v$.

* A geometria `geom_step` gera o gráfico de uma [função degrau]{.hl}. 

* Cada geometria está ligada a uma [`stat`]{.hl}, um algoritmo para computar o que vai ser desenhado. Aqui, passamos para a geometria [a função `ecdf` (*empirical cumulative distribution function*), do pacote `stats`, que calcula as frequências acumuladas.]{.hl}

  
  ```r
  sono %>% 
    ggplot(aes(x = sleep_total)) +
      geom_step(stat = 'ecdf') +
      scale_x_continuous(breaks = seq(0, 20, 2)) +
      scale_y_continuous(breaks = seq(0, 1, .1)) +
      labs(y = NULL)
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/ogiva-1} \end{center}

* Com a ogiva, podemos obter informações difíceis de visualizar no histograma. Por exemplo: 

  * Cerca de $20\%$ dos mamíferos têm menos de $6$ horas de sono.

  * Cerca de metade dos mamíferos têm menos de $10$ horas de sono.

  * Cerca de $10\%$ dos mamíferos têm mais de $16$ horas de sono.


## Ramos e folhas

* No início dos anos $1900$, quando estatísticas eram feitas à mão, Arthur Bowley criou os [diagramas de ramos e folhas]{.hl}.

* Um diagrama de ramos e folhas é, basicamente, uma listagem de todos os valores de uma variável, agrupados de maneira que todos os valores de uma classe (i.e., de uma linha) têm os algarismos iniciais dentro de um intervalo.

* Para as horas de sono dos mamíferos:

  
  ```r
  sono$sleep_total %>% 
    stem()
  ```
  
  ```
  ## 
  ##   The decimal point is at the |
  ## 
  ##    0 | 9
  ##    2 | 79013589
  ##    4 | 0423346
  ##    6 | 23307
  ##    8 | 03446779114456788
  ##   10 | 01113346900135
  ##   12 | 15555880578
  ##   14 | 234456996889
  ##   16 | 604
  ##   18 | 01479
  ```

* A primeira linha representa um indivíduo com $0{,}9$ horas de sono.

* A penúltima linha representa $3$ valores:

  * $16{,}6$
  * $17{,}0$
  * $17{,}4$
  

## Personalização do tema

* O `ggplot2` tem um tema *default*, chamado `theme_gray`, que gera [o *scatterplot* de um exemplo anterior](#grafico4) deste capítulo do seguinte modo:

  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-179-1} \end{center}

* Para este material, escolhi o tema `theme_linedraw`, que usa linhas pretas sobre fundo branco:

  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-180-1} \end{center}

* Para deixar os gráficos mais leves e facilitar a leitura, fiz as seguintes alterações no tema:

  * Mudei o tamanho do texto dos rótulos.
  
  * Fiz o rótulo do eixo $y$ aparecer na horizontal; embora isto ocupe um pouco mais de espaço, evita que o leitor tenha que girar a cabeça para ler o rótulo.
  
  * Eliminei as linhas dos eixos, para o gráfico ficar mais leve.
  
  * Eliminei a moldura da área de dados, para o gráfico ficar mais leve.
  
  * Eliminei a grade secundária, para o gráfico ficar mais leve.
  
* O resultado é
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-181-1} \end{center}

* Os meus comandos para alterar o tema são

  
  ```r
  # Tamanho do texto depende do formato de saída (html ou pdf):
  plot_text_size = ifelse(is_html_output(), 12, 13)
    
  # Tema mais leve:
  theme_set(
    theme_linedraw() +
      theme(
        # Tamanho do texto
        text = element_text(size = plot_text_size),
        # Eixo y
        axis.title.y.left = element_text(
          # Nunca girar o rótulo do eixo y
          angle = 0,
          # Separar o rótulo do eixo um pouco
          margin = margin(r = 20),
          # Posicionar verticalmente no meio
          vjust = .5
        ),
        # Eixo y secundário (à direita), quando presente
        axis.title.y.right = element_text(
          # Nunca girar o rótulo do eixo y
          angle = 0,
          # Separar o rótulo do eixo um pouco
          margin = margin(l = 20),
          # Posicionar verticalmente no meio
          vjust = .5
        ),
        # Não colocar marcas no eixo y secundário
        axis.ticks.y.right = element_blank(),
        # Separar o eixo x do rótulo um pouco mais
        axis.title.x.bottom = element_text(
          margin = margin(t = 20)
        ),
        # Eliminar linhas dos eixos
        axis.line = element_blank(),
        # Eliminar a moldura da área de dados
        panel.border = element_blank(),
        # Eliminar a grade secundária
        panel.grid.minor = element_blank()
      )
  )
  ```


## Exercícios

::: {.rmdimportant latex=1}

Não se esqueça de incluir títulos nos gráficos e rótulos nos eixos.

:::

### Peso cerebral e peso corporal

1. Observe os [comandos que geraram o gráfico `grafico4`](#grafico4).

1. O que acontece se você retirar `aes(group = 1)` da chamada a `geom_smooth`? Explique.

1. O que acontece se você mudar `show.legend = FALSE` para `show.legend = TRUE` na chamada a `geom_smooth`? Explique.

1. O que acontece se você mudar `se = FALSE` para `se = TRUE` na chamada a `geom_smooth`? Explique.
  
1. Acrescente ao gráfico a camada `facet_wrap(~vore)`. O que acontece? 

1. Examine o *data frame* `sono` e identifique o único insetívoro com mais de $4$kg.

1. Instale o pacote `gg_repel` e acrescente ao gráfico `grafico4` (não facetado) a geometria `geom_label_repel` (consulte a ajuda) para rotular o mamífero insetívoro identificado no item anterior com o seu nome, [sem cobrir outros pontos do gráfico]{.hl}. Cuidado para não alterar a legenda que já existe.


### Peso cerebral e horas de sono

::: {.rmdbox latex=1}

Use o *data frame* `sono` definido como 


```r
library(ggplot2)

sono <- msleep %>% 
  select(
    name, order, genus, vore, bodywt, 
    brainwt, awake, sleep_total
  )
```

:::

1. Construa um histograma da variável `brainwt`. Escolha o número de classes que você achar melhor. O que acontece com os valores `NA`?

1. [Descubra que função da forma `scale_x_...` usar](http://sillasgonzaga.com/material/curso_visualizacao/ggplot2-parte-ii.html#customizando-escalas) para fazer com que o eixo $x$ tenha uma escala logarítmica. Gere um novo histograma.

1. Qual dos dois histogramas é melhor para responder a pergunta "*Qual a faixa de peso cerebral que tem mais animais?*" de forma satisfatória?

1. Construa um *scatter plot* de horas de sono versus peso do cérebro. Você percebe alguma correlação entre estas variáveis? Se precisar, concentre-se em um subconjunto dos dados.

1. Usando `geom_smooth` ([leia a respeito](https://cdr.ibpad.com.br/ggplot2.html#objetos-geom%C3%A9tricos-e-tipos-de-gr%C3%A1ficos)), sobreponha uma reta de regressão ao gráfico de dispersão, usando o método `lm` e sem o erro padrão (i.e., com `se = FALSE`). O que você observa? Discuta.


### Igualdade de gênero entre furacões?

[Este artigo](https://www.pnas.org/content/111/24/8782) tenta achar uma relação entre o gênero do nome de um furacão e a quantidade de vítimas fatais provocadas por ele.

::: {.rmdbox latex=1}

Os dados estão no pacote `DAAG`, que deve ser instalado:


```r
if (!require(DAAG))
  install.packages("DAAG")
```

Vamos usar apenas algumas das variáveis, com nomes em português.


```r
df <- hurricNamed %>% 
  as_tibble() %>% 
  transmute(
    id = paste(Year, Name, sep = '-'),
    nome = Name,
    ano = Year,
    velocidade = LF.WindsMPH * 1.8,     # convertido para km/h
    pressao = LF.PressureMB,            # mbar
    prejuizo = BaseDam2014 %>% round(), # milhões de dólares de 2014
    mortes = deaths,
    genero = mf
  )
```

:::

1. Crie histogramas para as seguintes variáveis, escolhendo a quantidade de barras que você achar melhor. 

   * `velocidade`
   
   * `prejuizo`
   
   * `mortes`
   
   Não se esqueça de incluir títulos nos gráficos e rótulos nos eixos.
   
   Comente os histogramas. 

1. Os histogramas de prejuízos e mortes não ficaram bons. Vamos gerar histogramas transformados.

   No *data frame*, crie duas novas colunas:
   
   * `logprejuizo`: *logaritmo* do prejuízo (na base $10$)
   
   * `logmortes`: *logaritmo* do número de mortes (na base $10$)
   
   Agora, gere histogramas destas duas novas variáveis.

1. O que significa o valor do logaritmo do prejuízo na base $10$?

1. O que significa o valor do logaritmo do número de mortes na base $10$?

1. Por que o histograma do logaritmo do número de mortes vem com uma mensagem de aviso? 

1. Por que isto não acontece com o logaritmo do prejuízo?

1. Faça um gráfico de dispersão com `pressao` no eixo $y$ e `velocidade` no eixo $x$.

1. Usando `geom_smooth` ([leia a respeito](https://cdr.ibpad.com.br/ggplot2.html#objetos-geom%C3%A9tricos-e-tipos-de-gr%C3%A1ficos)), sobreponha uma reta de regressão ao gráfico, usando o método `lm` e sem o erro padrão (i.e., com `se = FALSE`). O que você observa? Discuta.

1. Faça um gráfico de dispersão com `logmortes` no eixo $y$ e `pressao` no eixo $x$.

1. Usando `geom_smooth` ([leia a respeito](https://cdr.ibpad.com.br/ggplot2.html#objetos-geom%C3%A9tricos-e-tipos-de-gr%C3%A1ficos)), sobreponha uma reta de regressão ao gráfico, usando o método `lm` e sem o erro padrão (i.e., com `se = FALSE`). O que você observa? Discuta.

1. Faça um gráfico de dispersão com `logmortes` no eixo $y$ e `pressao` no eixo $x$, com pontos coloridos de acordo com o gênero do nome do furacão.

1. Usando `geom_smooth` ([leia a respeito](https://cdr.ibpad.com.br/ggplot2.html#objetos-geom%C3%A9tricos-e-tipos-de-gr%C3%A1ficos)), sobreponha retas de regressão ao gráfico, uma para cada gênero, usando o método `lm` e sem o erro padrão (i.e., com `se = FALSE`). O que você observa? Discuta.

::: {.rmdcaution latex=1}

Visualizações como esta ajudam a explorar os dados, mas não servem para testar rigorosamente a hipótese de que furacões mulheres matam mais do que furacões homens. 

Mais adiante no curso, vamos aprender a fazer testes mais rigorosos sobre hipóteses como esta.

:::

<!--chapter:end:viz-01.Rmd-->

--- 
knit: "bookdown::render_book"
---


# Visualização com ggplot2 (continuação) {#viz2}

::: {.rmdtip latex=1}

Busque mais informações sobre os pacotes `tidyverse` e `ggplot2` [nas referências recomendadas](#refrec).

:::


## Vídeo 1

```{=latex}
\begin{center} \url{https://youtu.be/TjgLDeIQHIc} \end{center}
```


## *Boxplots*

### Conjunto de dados

* Vamos continuar a trabalhar com os dados sobre as horas de sono de alguns mamíferos:

  
  ```r
  sono <- msleep %>% 
    select(name, vore, order, sleep_total)
    
  sono
  ```
  
  ```
  ## # A tibble: 83 x 4
  ##   name                       vore  order        sleep_total
  ##   <chr>                      <chr> <chr>              <dbl>
  ## 1 Cheetah                    carni Carnivora           12.1
  ## 2 Owl monkey                 omni  Primates            17  
  ## 3 Mountain beaver            herbi Rodentia            14.4
  ## 4 Greater short-tailed shrew omni  Soricomorpha        14.9
  ## 5 Cow                        herbi Artiodactyla         4  
  ## 6 Three-toed sloth           herbi Pilosa              14.4
  ## # i 77 more rows
  ```


### Mediana e quartis { #mediana }

* Para entender *boxplots*, precisamos, antes, entender algumas medidas.

* Se tomarmos as quantidades de horas de sono de todos os animais do conjunto de dados e [classificarmos estas quantidades em ordem crescente]{.hl}, vamos ter:

  
  ```r
  horas <- sono %>% 
    pull(sleep_total) %>% 
    sort()
  
  horas
  ```
  
  ```
  ##  [1]  1,9  2,7  2,9  3,0  3,1  3,3  3,5  3,8  3,9  4,0  4,4  5,2  5,3
  ## [14]  5,3  5,4  5,6  6,2  6,3  6,3  7,0  7,7  8,0  8,3  8,4  8,4  8,6
  ## [27]  8,7  8,7  8,9  9,1  9,1  9,4  9,4  9,5  9,6  9,7  9,8  9,8 10,0
  ## [40] 10,1 10,1 10,1 10,3 10,3 10,4 10,6 10,9 11,0 11,0 11,1 11,3 11,5
  ## [53] 12,1 12,5 12,5 12,5 12,5 12,8 12,8 13,0 13,5 13,7 13,8 14,2 14,3
  ## [66] 14,4 14,4 14,5 14,6 14,9 14,9 15,6 15,8 15,8 15,9 16,6 17,0 17,4
  ## [79] 18,0 18,1 19,4 19,7 19,9
  ```

* Quantos valores são?

  
  ```r
  length(horas)
  ```
  
  ```
  ## [1] 83
  ```

* O valor que está [bem no meio desta fila]{.hl} --- i.e., na posição $42$ --- é a [mediana]{.hl}:

  
  ```r
  horas[ceiling(length(horas) / 2)]
  ```
  
  ```
  ## [1] 10,1
  ```

* Em R:

  
  ```r
  median(horas)
  ```
  
  ```
  ## [1] 10,1
  ```

  ::: {.rmdcaution latex=1}
  
  Mediana e média são coisas muito diferentes.
  
  Por acaso, neste exemplo, a média das horas é próxima da mediana:

  
  ```r
  mean(horas)
  ```
  
  ```
  ## [1] 10,43373
  ```

  Isto costuma acontecer quando a distribuição dos dados é aproximadamente simétrica.

  :::

* Os [quartis]{.hl} são os valores que estão nas posições $\frac14$, $\frac12$ e $\frac34$ da fila. São o [primeiro, segundo e terceiro quartis]{.hl}, respectivamente.

  
  ```r
  horas[
    c(
      ceiling(length(horas) / 4),
      ceiling(length(horas) / 2),
      ceiling(3 * length(horas) / 4)
    )
  ]
  ```
  
  ```
  ## [1]  7,7 10,1 13,8
  ```

* [Sim, a mediana é o segundo quartil.]{.hl}

* Em R, a [função `quantile`]{.hl} generaliza esta idéia: dado um número $q$ entre $0$ e $1$, [o quantil (com "N") $q$ é o elemento que está na posição que corresponde à fração $q$ da fila ordenada.]{.hl}

  
  ```r
  horas %>% quantile(c(.25, .5, .75))
  ```
  
  ```
  ##   25%   50%   75% 
  ##  7,85 10,10 13,75
  ```

* Na verdade, R tem $9$ algoritmos diferentes para calcular os quantis de uma amostra! Leia a ajuda da função `quantile` para conhecê-los.

* As diferenças entre nossos cálculos "à mão" e os resultados retornados por `quantile` são porque, em algumas situações, `quantile` calcula uma média ponderada entre elementos vizinhos. Por isso, `quantile` pode retornar valores que nem estão no vetor.

* Em R, a [função `summary`]{.hl} mostra o [mínimo]{.hl}, os [quartis (com "R")]{.hl}, a [média]{.hl}, e o [máximo]{.hl} de um vetor:

  
  ```r
  summary(horas)
  ```
  
  ```
  ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  ##    1,90    7,85   10,10   10,43   13,75   19,90
  ```


### Média $\times$ mediana

* Vamos ver um exemplo simples para entender a diferença entre a média e a mediana.

* Imagine o seguinte vetor com as receitas mensais de algumas pessoas (em milhares de reais:)

  
  ```r
  receitas <- c(1, 2, 2, 3.5, 1, 4, 1)
  ```

* Eis a mediana e a média deste vetor:

  
  ```r
  summary(receitas)[c('Median', 'Mean')]
  ```
  
  ```
  ##   Median     Mean 
  ## 2,000000 2,071429
  ```

* A mediana e a média são bem próximas.

* Imagine, agora, que adicionamos ao vetor um sujeito com receita mensal de $100$ mil reais:

  
  ```r
  receitas <- c(1, 2, 2, 3.5, 1, 4, 1, 100)
  ```

* Eis a nova mediana e a nova média:

  
  ```r
  summary(receitas)[c('Median', 'Mean')]
  ```
  
  ```
  ##  Median    Mean 
  ##  2,0000 14,3125
  ```

* O sujeito com a receita de $2$ mil reais continua no meio da fila, mas a média (que é a soma de todas as receitas, dividida pelo número de indivíduos) ficou muito diferente.

* A receita do novo sujeito é um [valor discrepante]{.hl}, ou, em inglês, um [*outlier*]{.hl}.

::: {.rmdimportant latex=1}

**Conclusão:** 

A [mediana é robusta]{.hl}, pouco afetada por *outliers*.

A [média é pouco robusta]{.hl}, muito sensível a *outliers*.

:::


### Intervalo interquartil (IQR) e *outliers*

* Qual fração dos elementos está [entre o primeiro e o terceiro quartis?]{.hl}

  
  ```r
  length(
    horas[between(horas, quantile(horas, .25), quantile(horas, .75))]
  ) /
  length(
    horas
  )
  ```
  
  ```
  ## [1] 0,4939759
  ```

* [Metade]{.hl} do total de elementos está entre o primeiro e o terceiro quartis.

* Este é o chamado [intervalo interquartil]{.hl} (*interquartile range*, em inglês).

* No nosso vetor `horas`, os [limites do IQR]{.hl} são

  
  ```r
  quantile(horas, c(.25, .75))
  ```
  
  ```
  ##   25%   75% 
  ##  7,85 13,75
  ```

* O [comprimento]{.hl} deste intervalo é calculado pela função `IQR`:

  
  ```r
  IQR(horas)
  ```
  
  ```
  ## [1] 5,9
  ```

* Valores [muito abaixo do primeiro quartil]{.hl} podem ser considerados discrepantes (*outliers*), mas quão abaixo?

* A resposta (puramente convencional) é [$1{,}5 \times \text{IQR}$ abaixo do primeiro quartil.]{.hl}

* No nosso vetor `horas`, isto significa valores abaixo de

  
  ```r
  limite_inferior <- quantile(horas, .25) - 1.5 * IQR(horas)
  
  unname(limite_inferior)
  ```
  
  ```
  ## [1] -1
  ```
  
* Neste caso, não há *outliers*:

  
  ```r
  horas[horas < limite_inferior]
  ```
  
  ```
  ## numeric(0)
  ```

* Da mesma forma, valores [muito acima do terceiro quartil]{.hl} podem ser considerados discrepantes (*outliers*), mas quão acima?

* De novo, a resposta (puramente convencional) é [$1{,}5 \times \text{IQR}$ acima do terceiro quartil.]{.hl}

* No nosso vetor `horas`, isto significa valores acima de

  
  ```r
  limite_superior <- quantile(horas, .75) + 1.5 * IQR(horas)
  
  unname(limite_superior)
  ```
  
  ```
  ## [1] 22,6
  ```
  
* Neste caso, também não há *outliers*:

  
  ```r
  horas[horas > limite_superior]
  ```
  
  ```
  ## numeric(0)
  ```

* Outro exemplo: vamos tomar apenas os mamíferos onívoros:

  
  ```r
  onivoros <- sono %>% 
    filter(vore == 'omni')
  
  onivoros
  ```
  
  ```
  ## # A tibble: 20 x 4
  ##   name                       vore  order        sleep_total
  ##   <chr>                      <chr> <chr>              <dbl>
  ## 1 Owl monkey                 omni  Primates            17  
  ## 2 Greater short-tailed shrew omni  Soricomorpha        14.9
  ## 3 Grivet                     omni  Primates            10  
  ## 4 Star-nosed mole            omni  Soricomorpha        10.3
  ## 5 African giant pouched rat  omni  Rodentia             8.3
  ## 6 Lesser short-tailed shrew  omni  Soricomorpha         9.1
  ## # i 14 more rows
  ```

* Vamos extrair o vetor de horas de sono:

  
  ```r
  horas <- onivoros %>% 
    pull(sleep_total)
  
  horas
  ```
  
  ```
  ##  [1] 17,0 14,9 10,0 10,3  8,3  9,1 18,0 10,1 10,9  9,8  8,0 10,1  9,7
  ## [14]  9,4 11,0  8,7  9,6  9,1 15,6  8,9
  ```

* Vamos calcular o primeiro e terceiro quartis:

  
  ```r
  quartis <- horas %>% 
    quantile(c(.25, .75))
  
  quartis
  ```
  
  ```
  ##    25%    75% 
  ##  9,100 10,925
  ```

* Vamos achar o IQR:

  
  ```r
  IQR(horas)
  ```
  
  ```
  ## [1] 1,825
  ```

* E os limites a partir dos quais os valores são *outliers*:

  
  ```r
  limites <- quartis + c(-1, 1) * 1.5 * IQR(horas)
  
  unname(limites)
  ```
  
  ```
  ## [1]  6,3625 13,6625
  ```

* Existem *outliers* inferiores?

  
  ```r
  onivoros %>% 
    filter(sleep_total < limites[1])
  ```
  
  ```
  ## # A tibble: 0 x 4
  ## # i 4 variables: name <chr>, vore <chr>, order <chr>,
  ## #   sleep_total <dbl>
  ```

  Não.

* Existem *outliers* superiores?

  
  ```r
  onivoros %>% 
    filter(sleep_total > limites[2])
  ```
  
  ```
  ## # A tibble: 4 x 4
  ##   name                       vore  order           sleep_total
  ##   <chr>                      <chr> <chr>                 <dbl>
  ## 1 Owl monkey                 omni  Primates               17  
  ## 2 Greater short-tailed shrew omni  Soricomorpha           14.9
  ## 3 North American Opossum     omni  Didelphimorphia        18  
  ## 4 Tenrec                     omni  Afrosoricida           15.6
  ```

  Sim! Estes animais dormem demais em comparação com os outros onívoros. 


### Gerando boxplots

* [Um *boxplot* é uma representação visual dos valores que calculamos acima.]{.hl}

* No `ggplot2`, [a geometria `geom_boxplot` constrói *boxplots*:]{.hl}

  
  ```r
  sono %>% 
    ggplot(aes(y = sleep_total)) +
      geom_boxplot(fill = 'gray') +
      scale_x_continuous(breaks = NULL) +
      scale_y_continuous(breaks = seq(0, 20, 2))
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-215-1} \end{center}

* A [caixa]{.hl} vai do valor do [primeiro quartil]{.hl} (embaixo) até o [terceiro quartil]{.hl} (em cima).

* A [linha horizontal dentro da caixa]{.hl} representa o valor da [mediana]{.hl}.

* As [linhas verticais]{.hl} acima e abaixo da caixa (pitorescamente chamadas de "bigodes") vão até o [limite inferior]{.hl} (primeiro quartil ${}- 1{,}5 \times \text{IQR}$) e até o [limite superior]{.hl} (terceiro quartil ${}+ 1{,}5 \times \text{IQR}$).

* Neste *boxplot*, não há *outliers*.

* []{#onivoros} Podemos usar a posição $x$ para desenhar vários *boxplots*, um para cada dieta:

  
  ```r
  sono %>% 
    ggplot(aes(x = vore, y = sleep_total)) +
      geom_boxplot(fill = 'gray') +
      scale_y_continuous(breaks = seq(0, 20, 2))
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-216-1} \end{center}

* No *boxplot* de onívoros, [os *outliers* aparecem como pontos isolados,]{.hl} acima da caixa, além dos alcances do bigode superior (aliás, onde está bigode superior?).

* *Boxplots* lado a lado são úteis para compararmos grupos diferentes de dados.

* Veja como, com exceção dos insetívoros, as medianas dos grupos são parecidas.

* Veja como carnívoros, insetívoros e herbívoros apresentam maior variação, enquanto onívoros e animais sem dieta registrada apresentam menor variação.

* Vamos combinar, em um só gráfico

  * Os pontos representando os animais,
  
  * Os *boxplots*,
  
  * As médias (que podem estar próximas ou distantes das medianas).

  
  ```r
  sono %>% 
    ggplot(aes(x = vore, y = sleep_total)) +
      geom_boxplot(fill = 'gray') +
      scale_y_continuous(breaks = seq(0, 20, 2)) +
      geom_point(
        color = 'blue', 
        alpha = .3
      ) +
      stat_summary(
        fun = mean, 
        geom = 'point', 
        color = 'red', 
        shape = 'cross', 
        size = 5,
        stroke = 1
      ) +
      labs(
        title = 'Sono total de diversos mamíferos, por dieta',
        subtitle = '(o X vermelho representa a média)',
        x = 'dieta',
        y = 'sono total\n(em horas)'
      )
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-217-1} \end{center}

* [Quando a caixa é longa,]{.hl} o IQR é grande, e [os valores estão muito espalhados;]{.hl} é o caso dos herbívoros e insetívoros.

* [Quando a caixa é curta,]{.hl} o IQR é pequeno, e [os valores estão pouco espalhados]{.hl}; é o caso dos onívoros. Como o IQR é pequeno, os $4$ mamíferos com mais de $14$ horas de sono são *outliers*.

* Observe, ainda, como os *outliers* "puxam" a média dos onívoros para cima.


## Vídeo 2

```{=latex}
\begin{center} \url{https://youtu.be/QqnOvgBXJ-s} \end{center}
```


## Gráficos de barras e de colunas

### Conjunto de dados

* O R tem um *array* de $3$ dimensões com dados sobre as cores dos cabelos e dos olhos de $592$ alunos e alunas de uma universidade americana em $1974$.

* Se pedirmos para o R exibir os dados, veremos [duas matrizes]{.hl}, uma para cada sexo:

  
  ```r
  HairEyeColor
  ```
  
  ```
  ## , , Sex = Male
  ## 
  ##        Eye
  ## Hair    Brown Blue Hazel Green
  ##   Black    32   11    10     3
  ##   Brown    53   50    25    15
  ##   Red      10   10     7     7
  ##   Blond     3   30     5     8
  ## 
  ## , , Sex = Female
  ## 
  ##        Eye
  ## Hair    Brown Blue Hazel Green
  ##   Black    36    9     5     2
  ##   Brown    66   34    29    14
  ##   Red      16    7     7     7
  ##   Blond     4   64     5     8
  ```

* Vamos transformar este *array* em um *data frame*.

* O *array* contém apenas os totais de cada classe. Vamos usar a função `uncount` para gerar uma linha para cada aluno:

  
  ```r
  df_orig <- as.data.frame(HairEyeColor) %>% 
    uncount(Freq) %>% 
    as_tibble()
    
  df_orig
  ```
  
  ```
  ## # A tibble: 592 x 3
  ##   Hair  Eye   Sex  
  ##   <fct> <fct> <fct>
  ## 1 Black Brown Male 
  ## 2 Black Brown Male 
  ## 3 Black Brown Male 
  ## 4 Black Brown Male 
  ## 5 Black Brown Male 
  ## 6 Black Brown Male 
  ## # i 586 more rows
  ```

* O `ggplot2` e os outros pacotes do `tidyverse` foram projetados para trabalhar com *data frames* neste formato, [com uma observação (um indivíduo, um elemento) por linha.]{.hl} É o chamado [formato *tidy*.]{.hl}

* Usando vetores com elementos nomeados, podemos traduzir o conteúdo do *data frame* para português:

  
  ```r
  cabelo <- c(
    'Brown' = 'castanhos',
    'Blond' = 'louros',
    'Black' = 'pretos',
    'Red' = 'ruivos'
  )
  
  olhos <- c(
    'Brown' = 'castanhos',
    'Blue' = 'azuis',
    'Hazel' = 'avelã',
    'Green' = 'verdes'
  )
  
  sexo <- c(
    'Male' = 'homem',
    'Female' = 'mulher'
  )
  
  df <- df_orig %>% 
    transmute(
      cabelos = cabelo[Hair],
      olhos = olhos[Eye],
      sexo = sexo[Sex]
    )
  ```

* Um sumário:

  
  ```r
  df %>% dfSummary() %>% print()
  ```
  
  
  +-------------+------------------------+----------------------+----------+
  | Variável    | Estatísticas / Valores | Freqs (% de Válidos) | Faltante |
  +=============+========================+======================+==========+
  | cabelos\    | 1\. castanhos\         | 108 (18,2%)\         | 0\       |
  | [character] | 2\. louros\            | 286 (48,3%)\         | (0,0%)   |
  |             | 3\. pretos\            | 71 (12,0%)\          |          |
  |             | 4\. ruivos             | 127 (21,5%)          |          |
  +-------------+------------------------+----------------------+----------+
  | olhos\      | 1\. avelã\             | 93 (15,7%)\          | 0\       |
  | [character] | 2\. azuis\             | 215 (36,3%)\         | (0,0%)   |
  |             | 3\. castanhos\         | 220 (37,2%)\         |          |
  |             | 4\. verdes             | 64 (10,8%)           |          |
  +-------------+------------------------+----------------------+----------+
  | sexo\       | 1\. homem\             | 279 (47,1%)\         | 0\       |
  | [character] | 2\. mulher             | 313 (52,9%)          | (0,0%)   |
  +-------------+------------------------+----------------------+----------+


### Gerando gráficos de barras

* Um [gráfico de barras]{.hl} contém uma barra para cada valor de uma [variável categórica.]{.hl}

* [Usamos `geom_bar` para gerar um gráfico de barras]{.hl} de cores de cabelo:

  
  ```r
  df %>% 
    ggplot(aes(x = cabelos)) +
      geom_bar() +
      labs(y = NULL)
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-223-1} \end{center}

  ::: {.rmdimportant latex=1}
  
  **Gráfico de barras $\times$ histograma:**
  
  * [Os dois tipos de gráficos mostram a frequência]{.hl} (quantidade de elementos) [no eixo vertical]{.hl}.
  
  * No [gráfico de barras]{.hl}:
  
    * A variável é [categórica]{.hl} (nominal).
    
    * [Cada barra]{.hl} corresponde a [um valor]{.hl} da variável. 
    
    * [As barras não se tocam]{.hl}, enfatizando o fato de que a variável é categórica.
    
  * No [histograma]{.hl} ([veja o exemplo](#histograma1)):
  
    * A variável é [quantitativa]{.hl} (intervalar ou racional).
    
    * [Cada barra]{.hl} corresponde a [uma classe de valores]{.hl} da variável.
    
    * [As barras se tocam]{.hl}, para enfatizar que as classes são contíguas.
  
  :::

* Um gráfico de barras é mais legível quando as barras são mostradas em ordem crescente ou decrescente.

* Embora os valores da variável `cabelos` sejam *strings*, podemos aplicar a eles funções que manipulam fatores.

* A [função `fct_infreq`]{.hl}, do pacote `forcats`, ordena os valores em [ordem decrescente de frequência]{.hl}.

* A [função `fct_rev`]{.hl}, também do pacote `forcats`, [inverte a ordenação.]{.hl}

  
  ```r
  df %>% 
    ggplot(aes(x = fct_rev(fct_infreq(cabelos)))) +
      geom_bar() +
      labs(
        x = 'cabelos',
        y = NULL
      )
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-224-1} \end{center}

* A posição $x$ e a altura de cada barra são estéticas: [a posição $x$ representa a cor dos cabelos]{.hl}, e [a altura representa a frequência daquela cor]{.hl}.

* Vamos acrescentar mais uma estética: [a cor de preenchimento vai representar o sexo]{.hl}.

  
  ```r
  df %>% 
    ggplot(aes(x = fct_rev(fct_infreq(cabelos)), fill = sexo)) +
      geom_bar() +
      labs(
        x = 'cabelos',
        y = NULL
      )
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-225-1} \end{center}

* Se a cor dos homens incomoda você, altere a escala que especifica o preenchimento (`scale_fill_discrete`):

  
  ```r
  df %>% 
    ggplot(aes(x = fct_rev(fct_infreq(cabelos)), fill = sexo)) +
      geom_bar() +
      scale_fill_discrete(type = c('blue', 'red')) +
      labs(
        x = 'cabelos',
        y = NULL
      )
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-226-1} \end{center}

* [Podemos fazer um gráfico de barras horizontais com `coord_flip`.]{.hl} Isto geralmente é útil quando os rótulos das barras são longos:

  
  ```r
  df %>% 
    ggplot(aes(x = fct_rev(fct_infreq(cabelos)), fill = sexo)) +
      geom_bar() +
      scale_fill_discrete(type = c('blue', 'red')) +
      labs(
        x = 'cabelos',
        y = NULL
      ) +
      coord_flip()
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-227-1} \end{center}

* Você consegue dizer se há mais homens ou mulheres com cabelos pretos? E castanhos? E ruivos?

* Se posicionarmos as barras lado a lado, fica mais fácil responder.

* Usamos o argumento `position = 'dodge'` de `geom_bar`. "*Dodge*" significa "esquivar-se", em inglês.

  
  ```r
  df %>% 
    ggplot(aes(x = fct_rev(fct_infreq(cabelos)), fill = sexo)) +
      geom_bar(position = 'dodge') +
      labs(
        x = 'cabelos',
        y = NULL
      ) +
      scale_fill_discrete(type = c('blue', 'red'))
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-228-1} \end{center}

* Agora vamos examinar a relação entre as cores dos olhos e as cores dos cabelos:

  
  ```r
  df %>% 
    ggplot(aes(x = fct_rev(fct_infreq(cabelos)), fill = olhos)) +
      geom_bar() +
      scale_fill_discrete(
        type = c('#908050', 'blue', 'brown', 'green')
      ) +
      labs(
        x = 'cabelos',
        y = NULL
      )
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-229-1} \end{center}

* Ou, com barras lado a lado:

  
  ```r
  df %>% 
    ggplot(aes(x = fct_rev(fct_infreq(cabelos)), fill = olhos)) +
      geom_bar(position = 'dodge') +
      scale_fill_discrete(
        type = c('#908050', 'blue', 'brown', 'green')
      ) +
      labs(
        x = 'cabelos',
        y = NULL
      )
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-230-1} \end{center}

* Observações e perguntas:

  1. Há mais pessoas louras de olhos castanhos do que louras de olhos azuis. O esperado não seria mais pessoas louras de olhos azuis? Pessoas louras de olhos castanhos pintaram os cabelos?
  
  1. Há muito mais ruivos de olhos azuis do que ruivos de olhos verdes. Não deveria ser o contrário? Também são pessoas que pintaram os cabelos de ruivo? Ou houve erro no registro das cores dos olhos? 
  
* Para incluir o sexo, podemos [facetar]{.hl} o gráfico. Usando `facet_wrap`[^til], geramos dois subgráficos lado a lado:

  
  ```r
  df %>% 
    ggplot(aes(x = fct_rev(fct_infreq(cabelos)), fill = olhos)) +
      geom_bar(position = 'dodge') +
      scale_fill_discrete(type = c('#908050', 'blue', 'brown', 'green')) +
      facet_wrap(~sexo) +
      labs(
        title = 'Cores de cabelos e olhos por sexo',
        y = NULL,
        x = 'cabelos'
      )
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-231-1} \end{center}

[^til]: O nome da variável segundo a qual facetar deve aparecer depois de um `~`.

* Se a quantidade grande de pessoas louras de olhos castanhos (em comparação com pessoas louras de olhos azuis) for por causa da pintura de cabelos, então o gráfico acima mostra que as mulheres pintam os cabelos de louro com mais frequência do que os homens.

* Quando facetamos por cor de cabelos, também podemos observar as mesmas diferenças entre homens e mulheres:

  
  ```r
  df %>% 
    ggplot(aes(x = sexo, fill = fct_infreq(olhos))) +
      geom_bar(position = 'dodge') +
      facet_wrap(~cabelos, labeller = label_both) +
      scale_fill_discrete(type = c('brown', 'blue', '#908050', 'green')) +
      labs(
        x = NULL,
        y = NULL,
        fill = 'olhos',
        title = 'Cor dos olhos e sexo por cor dos cabelos'
      )
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-232-1} \end{center}


### *Data frame* já contendo os totais

* Você percebeu que [`geom_bar` analisa o *data frame* e calcula as frequências]{.hl} necessárias para construir o gráfico.

* Em algumas situações, [o *data frame* já contém as frequências]{.hl} (em vez de conter uma linha por indivíduo).

* Vamos usar `count` para criar um *data frame* assim:

  
  ```r
  df_tot <- df %>% 
    count(sexo, cabelos, olhos)
  
  df_tot
  ```
  
  ```
  ## # A tibble: 32 x 4
  ##   sexo  cabelos   olhos         n
  ##   <chr> <chr>     <chr>     <int>
  ## 1 homem castanhos avelã        10
  ## 2 homem castanhos azuis        11
  ## 3 homem castanhos castanhos    32
  ## 4 homem castanhos verdes        3
  ## 5 homem louros    avelã        25
  ## 6 homem louros    azuis        50
  ## # i 26 more rows
  ```

* Para $4$ cores de cabelo, $4$ cores de olhos, e $2$ sexos, são $32$ combinações possíveis.

* Com este *data frame*, podemos gerar todos os gráficos anteriores usando [`geom_col` no lugar de `geom_bar`]{.hl}. Por exemplo:

  
  ```r
  df_tot %>% 
    ggplot(aes(x = cabelos, y = n)) +
      geom_col() +
      labs(
        y = NULL
      )
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-234-1} \end{center}

* Com `geom_col`, [precisamos passar a estética $y$]{.hl} (no nosso exemplo, a variável `n`, que contém as frequências).

* Para ordenar as barras, usamos a função `fct_reorder`, que ordena os níveis de um fator (`cabelos`) de acordo com o resultado de uma função (`sum`) aplicada sobre os valores de outra variável (`n`):

  
  ```r
  df_tot %>% 
    ggplot(aes(x = fct_reorder(cabelos, n, sum), y = n)) +
      geom_col() +
      labs(
        x = 'cabelos',
        y = NULL
      )
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-235-1} \end{center}


## Gráficos de linha e séries temporais

### Conjunto de dados

* O R tem uma matriz com as quantidades de telefones em várias regiões do mundo ao longo de vários anos:

  
  ```r
  WorldPhones
  ```
  
  ```
  ##      N.Amer Europe Asia S.Amer Oceania Africa Mid.Amer
  ## 1951  45939  21574 2876   1815    1646     89      555
  ## 1956  60423  29990 4708   2568    2366   1411      733
  ## 1957  64721  32510 5230   2695    2526   1546      773
  ## 1958  68484  35218 6662   2845    2691   1663      836
  ## 1959  71799  37598 6856   3000    2868   1769      911
  ## 1960  76036  40341 8220   3145    3054   1905     1008
  ## 1961  79831  43173 9053   3338    3224   2005     1076
  ```

* Os números representam milhares.

* [Os números dos anos são os nomes das linhas da matriz.]{.hl}

* Vamos transformar esta matriz em uma *tibble*:

  
  ```r
  fones <- WorldPhones %>% 
    as_tibble(rownames = 'Ano') %>% 
    mutate(Ano = as.numeric(Ano))
  
  fones
  ```
  
  ```
  ## # A tibble: 7 x 8
  ##     Ano N.Amer Europe  Asia S.Amer Oceania Africa Mid.Amer
  ##   <dbl>  <dbl>  <dbl> <dbl>  <dbl>   <dbl>  <dbl>    <dbl>
  ## 1  1951  45939  21574  2876   1815    1646     89      555
  ## 2  1956  60423  29990  4708   2568    2366   1411      733
  ## 3  1957  64721  32510  5230   2695    2526   1546      773
  ## 4  1958  68484  35218  6662   2845    2691   1663      836
  ## 5  1959  71799  37598  6856   3000    2868   1769      911
  ## 6  1960  76036  40341  8220   3145    3054   1905     1008
  ## # i 1 more row
  ```

* Esta *tibble* [não está no formato *tidy*]{.hl}. Queremos que cada linha corresponda a uma observação, contendo

  * Ano,
  
  * Região,
  
  * Quantidade de telefones.
  
* Usamos a função `pivot_longer` para mudar o formato da *tibble*:

  
  ```r
  fones_long <- fones %>% 
    pivot_longer(
      cols = -Ano,
      names_to = 'Região',
      values_to = 'n'
    )
  
  fones_long
  ```
  
  ```
  ## # A tibble: 49 x 3
  ##     Ano Região      n
  ##   <dbl> <chr>   <dbl>
  ## 1  1951 N.Amer  45939
  ## 2  1951 Europe  21574
  ## 3  1951 Asia     2876
  ## 4  1951 S.Amer   1815
  ## 5  1951 Oceania  1646
  ## 6  1951 Africa     89
  ## # i 43 more rows
  ```

* Confira: antes, tínhamos $7$ anos, com $7$ quantidades por ano, uma quantidade por região. Eram $49$ quantidades. Agora temos uma *tibble* de $49$ linhas.


### Gerando gráficos de linha

* [A geometria `geom_line` gera gráficos de linha.]{.hl} Perceba como geramos uma linha por região:

  
  ```r
  fones_long %>% 
    ggplot(aes(x = Ano, y = n, color = Região)) +
      geom_line() +
      scale_x_continuous(breaks = 1951:1961)
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-239-1} \end{center}

* Embora a legenda associe uma cor a cada região, [a leitura seria mais fácil se a ordem das regiões na legenda coincidisse com a posição das linhas na borda direita da grade]{.hl}:

  
  ```r
  fones_long %>% 
    ggplot(
        aes(
          x = Ano, 
          y = n, 
          color = fct_rev(fct_reorder(Região, n, max))
        )
    ) +
      geom_line() +
      scale_x_continuous(breaks = 1951:1961) +
      labs(
        color = 'Região',
        y = '',
        x = NULL,
        title = 'Quantidade de aparelhos de telefone por ano, por região'
      )
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-240-1} \end{center}

* Parece que está faltando uma linha, mas o que acontece é que as quantidades da América do Sul e da Oceania são bem parecidas:

  
  ```r
  fones_long %>%
    filter(Região %in% c('S.Amer', 'Oceania')) %>% 
    ggplot(
      aes(
        x = Ano, 
        y = n, 
        color = fct_rev(fct_reorder(Região, n, max))
      )
    ) +
      geom_line() +
      scale_x_continuous(breaks = 1951:1961) +
      labs(y = NULL, color = 'Região')
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-241-1} \end{center}

* Estamos tratando estes dados como simples números, mas, na verdade, [este conjunto de dados é uma série temporal (*time series*)]{.hl}.

* R tem todo um conjunto de funções para tratar séries temporais, calcular tendências, achar padrões cíclicos, fazer estimativas, e gerar gráficos específicos, entre outras coisas.

* Mas não vamos falar mais sobre séries temporais aqui.

* O [pacote `tsibble`]{.hl} oferece maneiras de trabalhar com séries temporais de maneira *tidy*. Você pode ler a documentação do pacote entrando

  
  ```r
  library(tsibble)
  ?`tsibble-package`
  ```


## Exercícios

### O bigode dos onívoros

* Examine o *data frame* `sono` para descobrir o que houve com o bigode superior do *boxplot* dos onívoros [neste gráfico](#onivoros).


### Usando `geom_col`

* Use `geom_col` para reproduzir, a partir do *data frame* `df_tot`, todos os gráficos que foram gerados com `geom_bar` na seção [Gerando gráficos de barras](#gerando-gr%C3%A1ficos-de-barras).


## Referências sobre visualização e R

::: {.rmdtip latex=1}

Busque mais informações sobre os pacotes `tidyverse` e `ggplot2` [nas referências recomendadas](#refrec).

:::



<!--chapter:end:viz-02.Rmd-->

--- 
knit: "bookdown::render_book"
---


# Medidas {#medidas}

## Vídeo

```{=latex}
\begin{center} \url{https://youtu.be/C96MOP4YlaY} \end{center}
```

## Medidas de centralidade

### Média

* A [média de uma população]{.hl} é escrita como $\mu$, e é definida como 
  $$\mu = \frac{\sum_{i=1}^N x_i}{N}$$

  * $\sum_{i=1}^N x_i$ é a soma de todos os dados da população.
  
  * $N$ é a quantidade de elementos na população.

* A [média de uma amostra]{.hl} é escrita como $\bar x$, e é definida como:
  $$\bar x = \frac{\sum_{i=1}^n x_i}{n}$$

  * $\sum_{i=1}^n x_i$ é a soma de todos os dados da amostra.
  
  * $n$ é a quantidade de elementos na amostra.
  
* O cálculo é essencialmente o mesmo. Só mudam os símbolos: $N$ versus $n$, e $\mu$ versus $\bar x$.


#### Exemplo

* Idades dos alunos de uma turma:

  
  ```r
  idades <- c(
    20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 
    22, 22, 22, 23, 23, 23, 23, 24, 24,
    65
  )
  ```

* Média [com]{.hl} o velhinho de $65$ anos:

  
  ```r
  mean(idades)
  ```
  
  ```
  ## [1] 23,75
  ```

* Média [sem]{.hl} o velhinho:

  
  ```r
  mean(idades[-length(idades)])
  ```
  
  ```
  ## [1] 21,57895
  ```


### Mediana

* Já aprendemos sobre a mediana na [seção sobre *boxplots*](#mediana).

* A idéia é que, depois de ordenar os dados, $50\%$ dos dados estarão à esquerda da mediana, e $50\%$ à direita.

* A mediana não é tão sensível a *outliers* quanto à média.


#### Exemplo

* Mediana [com]{.hl} o velhinho:

  
  ```r
  median(idades)
  ```
  
  ```
  ## [1] 21,5
  ```

* Mediana [sem]{.hl} o velhinho:

  
  ```r
  median(idades[-length(idades)])
  ```
  
  ```
  ## [1] 21
  ```


### Moda

* A [moda]{.hl} é o [valor mais frequente]{.hl} do conjunto de dados. 

* Pode haver mais de uma moda.

* [Não existe uma função para a moda em R base.]{.hl} Por quê? 

* Por incrível que pareça, [é complicado definir a moda de forma a conseguir resultados interessantes]{.hl}.

* [Por exemplo]{.hl}, vamos definir um conjunto de $1000$ valores numéricos distribuídos normalmente^[Mais sobre a distribuição normal no capítulo ???.], com média igual a $5$ e desvio-padrão^[Mais sobre o desvio-padrão daqui a pouco.] igual a $2$:

    
    ```r
    normal <- rnorm(1000, mean = 5, sd = 2)
    ```

    

* []{#dados-normais} O histograma dos nossos dados é

    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-246-1} \end{center}

* Vamos calcular a moda com a função `mfv` (*most frequent value*), do pacote `modeest`:

    
    ```r
    # Pacote com funções para calcular modas
    library(modeest)
    ```
    
    ```
    ## Registered S3 method overwritten by 'rmutil':
    ##   method         from
    ##   print.response httr
    ```
    
    ```r
    # Por causa de um bug na função mfv, 
    # precisamos de números com ponto decimal
    # (em vez de vírgula):
    options(OutDec = '.')
    mfv(normal)
    ```
    
    ```
    ##    [1] -0.81215397 -0.12837356  0.02945055  0.13761992  0.22543367
    ##    [6]  0.22932082  0.33160123  0.34267641  0.36204940  0.40672372
    ##   [11]  0.50164710  0.53757801  0.63908611  0.78440766  0.81150134
    ##   [16]  0.89084600  0.89233798  0.94940125  0.96340957  0.97432526
    ##   [21]  1.10786961  1.11387156  1.14400890  1.14561818  1.15093796
    ##   [26]  1.20184130  1.20788733  1.25883939  1.29348498  1.29724675
    ##   [31]  1.30092483  1.32091504  1.32744674  1.33115485  1.37060682
    ##   [36]  1.37646270  1.38924447  1.41397149  1.42630231  1.44516282
    ##   [41]  1.44581105  1.44748108  1.56912995  1.57980642  1.58711704
    ##   [46]  1.61425456  1.61448039  1.62477493  1.64703042  1.71417696
    ##   [51]  1.71681425  1.73623974  1.75471652  1.76175668  1.77041763
    ##   [56]  1.77657787  1.77665743  1.78931736  1.79624004  1.80045380
    ##   [61]  1.82875930  1.83085097  1.83344742  1.84278846  1.85824245
    ##   [66]  1.87862248  1.89214256  1.89859163  1.90560512  1.90727968
    ##   [71]  1.92218788  1.92855987  1.93027508  1.94237134  2.01299743
    ##   [76]  2.01519826  2.03324241  2.05153033  2.05908049  2.06531115
    ##   [81]  2.07600714  2.08141639  2.08332919  2.14944030  2.15498184
    ##   [86]  2.16963254  2.18930912  2.19797426  2.20273020  2.20337299
    ##   [91]  2.22364746  2.22810507  2.23095922  2.23863719  2.24175853
    ##   [96]  2.30018947  2.31451509  2.33082985  2.33599546  2.34471315
    ##  [101]  2.35288387  2.35794985  2.35901050  2.36445789  2.37865128
    ##  [106]  2.38284413  2.39286199  2.39991724  2.41088196  2.41976797
    ##  [111]  2.42496055  2.43426231  2.44457229  2.46171505  2.46290602
    ##  [116]  2.46295447  2.48541149  2.49759547  2.49965339  2.50687039
    ##  [121]  2.50744477  2.51974453  2.55397764  2.57707849  2.57749438
    ##  [126]  2.58569370  2.59172246  2.59902612  2.63580244  2.63851229
    ##  [131]  2.64458221  2.64605225  2.65111275  2.65478667  2.67054966
    ##  [136]  2.67517088  2.67916714  2.70242419  2.70720782  2.71545698
    ##  [141]  2.72199029  2.73363763  2.74685591  2.76596550  2.77071684
    ##  [146]  2.77509391  2.78726880  2.79180951  2.79725247  2.79972762
    ##  [151]  2.80245464  2.80365756  2.81052524  2.82290484  2.82651026
    ##  [156]  2.83566836  2.84177621  2.85190666  2.85453259  2.85745656
    ##  [161]  2.86769289  2.87165810  2.88173681  2.88667335  2.89718420
    ##  [166]  2.90204566  2.90672081  2.90798892  2.91010157  2.92189683
    ##  [171]  2.97681273  2.97863628  2.98379253  2.98731228  2.98968927
    ##  [176]  2.99124152  3.00037652  3.00892747  3.00966826  3.01266175
    ##  [181]  3.01421454  3.01549097  3.01742968  3.03770304  3.05016940
    ##  [186]  3.06623591  3.06999208  3.08345812  3.09814078  3.10747966
    ##  [191]  3.11186900  3.12588898  3.12905704  3.14182392  3.14875445
    ##  [196]  3.15271186  3.15536870  3.15788666  3.15800828  3.17186930
    ##  [201]  3.17843615  3.18986412  3.19396803  3.19980126  3.20040525
    ##  [206]  3.20461272  3.20833879  3.22229827  3.22411908  3.23368491
    ##  [211]  3.24049152  3.24664137  3.25748856  3.26625258  3.26914028
    ##  [216]  3.31988994  3.32915961  3.33459538  3.34341870  3.34616003
    ##  [221]  3.34737722  3.35155463  3.35350875  3.36231244  3.36346161
    ##  [226]  3.36424564  3.37047226  3.37486259  3.37912612  3.38338483
    ##  [231]  3.39434285  3.42828251  3.43308469  3.44132574  3.44656091
    ##  [236]  3.46366923  3.46994735  3.49765881  3.50944095  3.53809119
    ##  [241]  3.53960675  3.54882236  3.55125652  3.56289767  3.57070340
    ##  [246]  3.57358125  3.57358129  3.58051098  3.58199783  3.59566352
    ##  [251]  3.59693106  3.60346653  3.60485957  3.60699393  3.61015054
    ##  [256]  3.61442235  3.61653526  3.62399143  3.64240546  3.64523111
    ##  [261]  3.64901669  3.65651312  3.65852038  3.66346969  3.67195581
    ##  [266]  3.67755680  3.67866863  3.68007948  3.68586718  3.68998873
    ##  [271]  3.69235143  3.70851484  3.72731412  3.72807126  3.72816674
    ##  [276]  3.73790998  3.74318750  3.75203205  3.77542957  3.78030607
    ##  [281]  3.78298519  3.78485813  3.78728562  3.79457788  3.79989383
    ##  [286]  3.80156836  3.80414639  3.81680653  3.83732886  3.84663022
    ##  [291]  3.84912417  3.84933022  3.85067967  3.85261340  3.85715478
    ##  [296]  3.85781405  3.85919267  3.86975188  3.87327735  3.88071525
    ##  [301]  3.88582271  3.88711352  3.89424767  3.90158521  3.90458857
    ##  [306]  3.91008990  3.92281346  3.94514979  3.95618778  3.96267519
    ##  [311]  3.96292501  3.96368108  3.97693029  3.98213764  3.98690321
    ##  [316]  4.00185552  4.00422001  4.01437597  4.02352234  4.02588333
    ##  [321]  4.02745006  4.02796580  4.02935984  4.03412561  4.03897717
    ##  [326]  4.04516115  4.06460063  4.06537515  4.07595868  4.08447083
    ##  [331]  4.09224493  4.09416005  4.09540465  4.09590007  4.10173481
    ##  [336]  4.10620829  4.11670855  4.12267944  4.12703933  4.13669104
    ##  [341]  4.13702037  4.14694746  4.15272384  4.15364436  4.15404163
    ##  [346]  4.15547130  4.15898014  4.16285292  4.16470288  4.16719533
    ##  [351]  4.17362099  4.17718152  4.17735507  4.18277908  4.19613016
    ##  [356]  4.19897916  4.21106716  4.21857052  4.24707238  4.24719101
    ##  [361]  4.24815754  4.25358171  4.25478750  4.26620989  4.28155070
    ##  [366]  4.28242460  4.28264309  4.28667496  4.29412371  4.30561963
    ##  [371]  4.30826101  4.31395047  4.31580644  4.31763113  4.32068451
    ##  [376]  4.32269795  4.32655681  4.33220627  4.33272901  4.33504651
    ##  [381]  4.34232172  4.34323268  4.35103263  4.35656658  4.36167854
    ##  [386]  4.36753849  4.37020454  4.39121993  4.39301073  4.39456038
    ##  [391]  4.39637965  4.39662743  4.39772451  4.40238034  4.41322662
    ##  [396]  4.41438487  4.41454664  4.41641786  4.42150752  4.42533366
    ##  [401]  4.43295523  4.43639555  4.44179066  4.44235449  4.45080346
    ##  [406]  4.46188820  4.46508551  4.46962194  4.47004553  4.48555548
    ##  [411]  4.48676980  4.49528898  4.49859342  4.51671657  4.52560970
    ##  [416]  4.53335163  4.53689488  4.53721026  4.54271356  4.55042644
    ##  [421]  4.55096881  4.56461383  4.56772286  4.56913907  4.57078342
    ##  [426]  4.57550932  4.58588657  4.58619918  4.58819314  4.59595489
    ##  [431]  4.59798825  4.60762404  4.61260556  4.62340588  4.62382990
    ##  [436]  4.62480331  4.63693938  4.64621421  4.65715511  4.65939738
    ##  [441]  4.66641338  4.66872071  4.67029305  4.67049977  4.68739045
    ##  [446]  4.69198818  4.69553906  4.69619013  4.71465868  4.71793831
    ##  [451]  4.71830955  4.73339960  4.73854042  4.74687207  4.75786779
    ##  [456]  4.75987187  4.76655700  4.77497501  4.77906044  4.78717974
    ##  [461]  4.79220241  4.79416179  4.79508586  4.80261377  4.80762827
    ##  [466]  4.81268880  4.81565839  4.82472974  4.82899331  4.83250753
    ##  [471]  4.84102436  4.84136862  4.84212529  4.85574533  4.85763939
    ##  [476]  4.86205571  4.86389724  4.86441327  4.86756892  4.86966908
    ##  [481]  4.87150576  4.88869662  4.89000086  4.89610119  4.90988864
    ##  [486]  4.91596256  4.92600690  4.93113026  4.93444763  4.93504162
    ##  [491]  4.93508576  4.93603341  4.93856074  4.94142839  4.94528857
    ##  [496]  4.94605443  4.96301283  4.97169950  4.98705074  4.98718431
    ##  [501]  4.99303973  5.00391248  5.01270079  5.02039502  5.02977406
    ##  [506]  5.03112342  5.03393943  5.03651066  5.04646700  5.05353868
    ##  [511]  5.05561895  5.05730308  5.06098185  5.08084132  5.08107944
    ##  [516]  5.08194100  5.08756745  5.09224213  5.09483226  5.10745161
    ##  [521]  5.10818885  5.10981401  5.11469178  5.12396251  5.13397490
    ##  [526]  5.14151753  5.14759759  5.14772983  5.16504294  5.16556762
    ##  [531]  5.17066572  5.17211584  5.17599239  5.17933436  5.18744627
    ##  [536]  5.18920632  5.19868104  5.19873771  5.21069427  5.21352046
    ##  [541]  5.21689700  5.22230312  5.22762755  5.22914232  5.23598163
    ##  [546]  5.23844998  5.24393385  5.25733762  5.25922517  5.26903430
    ##  [551]  5.28416038  5.28708357  5.28966302  5.29134462  5.29200513
    ##  [556]  5.29503795  5.30653217  5.33091962  5.33782090  5.33874446
    ##  [561]  5.34101197  5.34886794  5.35769427  5.36139408  5.36397527
    ##  [566]  5.36474392  5.36654772  5.36828885  5.37079656  5.37520534
    ##  [571]  5.37984269  5.39382686  5.39471311  5.39812578  5.40324884
    ##  [576]  5.40394243  5.40972205  5.41398076  5.43185342  5.44891735
    ##  [581]  5.44928777  5.45223568  5.45355200  5.45851621  5.46029197
    ##  [586]  5.46208645  5.46242192  5.46505654  5.47965259  5.47986760
    ##  [591]  5.50555720  5.50670592  5.51589038  5.51993178  5.52822631
    ##  [596]  5.52964680  5.53240853  5.53264277  5.53452343  5.54066666
    ##  [601]  5.54411732  5.54873351  5.55286428  5.55299111  5.55637291
    ##  [606]  5.56325114  5.56667853  5.56710578  5.56780209  5.56930104
    ##  [611]  5.56962997  5.57169131  5.58313181  5.58475868  5.58724711
    ##  [616]  5.59796886  5.63177071  5.63644459  5.64287226  5.64541488
    ##  [621]  5.65497674  5.66218516  5.66397853  5.66879079  5.67051876
    ##  [626]  5.67751756  5.68407067  5.68551033  5.69359706  5.70575710
    ##  [631]  5.71629422  5.72505705  5.73607529  5.73757351  5.74226952
    ##  [636]  5.74731607  5.75842644  5.76959292  5.77265844  5.78706053
    ##  [641]  5.78791844  5.79243016  5.79504499  5.80327789  5.80971322
    ##  [646]  5.81246681  5.81664666  5.81706087  5.82273198  5.82313386
    ##  [651]  5.83553623  5.84548177  5.84971923  5.85033989  5.85203008
    ##  [656]  5.85968257  5.86213984  5.86593688  5.86744562  5.87101920
    ##  [661]  5.87288447  5.87464060  5.87947739  5.88091055  5.88645383
    ##  [666]  5.89343605  5.90192150  5.90465928  5.91091233  5.93169328
    ##  [671]  5.93428738  5.93475206  5.93905913  5.93951668  5.94099707
    ##  [676]  5.94121021  5.94430687  5.94888211  5.95204538  5.96521533
    ##  [681]  5.96949716  5.97105771  5.98073315  5.99355313  5.99471453
    ##  [686]  6.00579608  6.01190497  6.01275471  6.01905984  6.02008870
    ##  [691]  6.02490342  6.03318455  6.03439497  6.03487064  6.03563679
    ##  [696]  6.03748276  6.04196350  6.04346816  6.04458887  6.04506592
    ##  [701]  6.04899988  6.05786954  6.07443690  6.07683981  6.08781748
    ##  [706]  6.09772527  6.10363903  6.10638740  6.10784184  6.11242243
    ##  [711]  6.11759432  6.13100860  6.13781903  6.15185319  6.15310676
    ##  [716]  6.15352653  6.15820513  6.16305744  6.16439958  6.16821212
    ##  [721]  6.16968902  6.18284544  6.18387258  6.19819522  6.19849250
    ##  [726]  6.19962006  6.22865845  6.24108265  6.24115739  6.25290143
    ##  [731]  6.27353591  6.28141231  6.28563470  6.28909673  6.28916518
    ##  [736]  6.30505876  6.31921793  6.32101191  6.32830156  6.33344479
    ##  [741]  6.34408252  6.34809222  6.35197967  6.35225563  6.35264221
    ##  [746]  6.36664073  6.37388737  6.37578608  6.38196472  6.38284715
    ##  [751]  6.38626936  6.39112855  6.39342695  6.39590835  6.40377783
    ##  [756]  6.41304206  6.41372018  6.41704666  6.42424331  6.42561500
    ##  [761]  6.42877601  6.43013465  6.43491996  6.44863700  6.44882701
    ##  [766]  6.44915688  6.46235089  6.48121074  6.49203870  6.49455670
    ##  [771]  6.49684590  6.50550196  6.51027750  6.51317124  6.51391875
    ##  [776]  6.51571093  6.52420411  6.52615293  6.53073785  6.53335153
    ##  [781]  6.53571353  6.53625568  6.54613488  6.56620537  6.56865566
    ##  [786]  6.58175206  6.58394702  6.61772757  6.62153295  6.62379623
    ##  [791]  6.62780471  6.63269382  6.65462622  6.66126490  6.66797334
    ##  [796]  6.67102159  6.68737932  6.70504888  6.70798240  6.71095244
    ##  [801]  6.71305337  6.72006049  6.72695483  6.72711189  6.73143218
    ##  [806]  6.73400561  6.75664832  6.75699150  6.79394357  6.79619499
    ##  [811]  6.80642739  6.80881034  6.81701095  6.81716081  6.82757177
    ##  [816]  6.82834835  6.84572178  6.85031686  6.87223558  6.87804425
    ##  [821]  6.88003836  6.88083520  6.88955685  6.89667135  6.89930848
    ##  [826]  6.92867371  6.93209735  6.93424626  6.94803339  6.95608615
    ##  [831]  6.96568086  6.96713635  6.97803912  6.99798640  7.00920466
    ##  [836]  7.01491084  7.01580723  7.01906316  7.02572869  7.03352208
    ##  [841]  7.03749205  7.04258321  7.04330701  7.04421595  7.04665726
    ##  [846]  7.05123042  7.05125387  7.05525179  7.05984351  7.07541369
    ##  [851]  7.07658556  7.08101749  7.08323766  7.10014071  7.10659188
    ##  [856]  7.10913475  7.10948347  7.11407978  7.11583687  7.11654960
    ##  [861]  7.14140426  7.14151530  7.15714380  7.16719233  7.18389792
    ##  [866]  7.18804179  7.19449472  7.19996120  7.21520750  7.22179784
    ##  [871]  7.23825960  7.25712225  7.26279117  7.27391629  7.28634523
    ##  [876]  7.28795559  7.29662962  7.31916681  7.31953004  7.33160920
    ##  [881]  7.34211412  7.34276784  7.35648053  7.35944649  7.36348605
    ##  [886]  7.36699395  7.39464405  7.40284589  7.40732797  7.41087095
    ##  [891]  7.41538244  7.41575144  7.42461729  7.46338465  7.48726807
    ##  [896]  7.51386023  7.54312551  7.57188593  7.57844150  7.58557748
    ##  [901]  7.59858458  7.59959266  7.60179597  7.63328518  7.63917754
    ##  [906]  7.64231789  7.64659966  7.66954137  7.68175961  7.68838802
    ##  [911]  7.70078345  7.71409649  7.72847088  7.73535950  7.73924634
    ##  [916]  7.74453024  7.75484053  7.75563372  7.75619617  7.76520187
    ##  [921]  7.79315029  7.80312621  7.80736272  7.81395137  7.82610568
    ##  [926]  7.86565712  7.89121846  7.89634090  7.89703268  7.89877807
    ##  [931]  7.92868450  7.94251068  7.94585995  7.95633690  7.96061926
    ##  [936]  7.96810477  7.99840964  7.99950939  8.01261503  8.02008798
    ##  [941]  8.03959026  8.07802083  8.09448956  8.10580490  8.11428596
    ##  [946]  8.13462259  8.14295291  8.19569886  8.23991558  8.26133737
    ##  [951]  8.26602927  8.27241696  8.27466037  8.32695026  8.33163874
    ##  [956]  8.33556784  8.35621239  8.36358233  8.42018783  8.44153186
    ##  [961]  8.49112933  8.51016101  8.51345712  8.53509259  8.56024291
    ##  [966]  8.63002338  8.63543558  8.65708934  8.66428457  8.75190818
    ##  [971]  8.76422926  8.78999783  8.82129221  8.84185049  8.88383386
    ##  [976]  8.91857276  8.95436061  8.96819530  8.98599839  9.00516056
    ##  [981]  9.02236375  9.08768972  9.18525858  9.25959788  9.29088198
    ##  [986]  9.36523331  9.37545506  9.43501710  9.50755739  9.54353512
    ##  [991]  9.58365760  9.63790333  9.92587466 10.16728070 10.19414445
    ##  [996] 10.35270048 10.43896958 10.51337535 11.02845728 13.00355067
    ```
    
    ```r
    # Voltamos para a vírgula como separador decimal:
    options(OutDec = ',')
    ```

* O que houve?!

* O problema é que não há valores repetidos no conjunto de dados! Por isso, todos os $1000$ valores são modais.

* Uma maneira de evitar isto é definir a moda como o [centro do intervalo mais curto que contém metade dos dados]{.hl}. Usamos a função `mlv` (*most likely value*):

    
    ```r
    moda <- mlv(normal, method = 'venter')
    moda
    ```
    
    ```
    ## [1] 5,161771
    ```

* Esta moda estimada pode nem estar no conjunto de dados:

    
    ```r
    moda %in% normal
    ```
    
    ```
    ## [1] FALSE
    ```

* Mas o resultado de `mlv()` é útil, pois nos diz que, embora não haja valores repetidos, valores próximos de $5$ são mais frequentes, como mostra o histograma.


#### Exercícios 

* Arrendonde os valores no vetor `normal` para $2$ casas decimais e ache a(s) moda(s) 

  1. com a função `mfv`, e
  
  1. com a função `mlv`, usando o método `venter`.

  [Considerando o histograma](#dados-normais), qual das respostas você prefere? Por quê?


## Formas de uma distribuição

* A forma do histograma mostra aspectos importantes da distribuição dos dados.


### Distribuição Uniforme

* Se o histograma tem todas as barras aproximadamente da mesma altura, dizemos que a distribuição é [uniforme]{.hl}:

    

    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-248-1} \end{center}

* [A distribuição uniforme não tem moda]{.hl}, já que todos os valores têm aproximadamente a mesma frequência.


### Simetria

* Se o histograma for simétrico (i.e., os lados esquerdo e direito são "espelhados"), dizemos que a distribuição é [simétrica]{.hl}.

* A distribuição normal [do exemplo acima](#dados-normais) é simétrica.

* A distribuição uniforme também é simétrica.

* Para distribuições simétricas, a média, a mediana e a moda [(quando existe e é única)]{.hl} são bem próximas.

  * Para a distribuição normal do exemplo:

    
    ```r
    mean(normal)
    ```
    
    ```
    ## [1] 4,980165
    ```
    
    ```r
    median(normal)
    ```
    
    ```
    ## [1] 4,990112
    ```
    
    ```r
    mlv(normal, method = 'venter')
    ```
    
    ```
    ## [1] 5,161771
    ```

  * Para a distribuição uniforme do exemplo:

    
    ```r
    mean(uniforme)
    ```
    
    ```
    ## [1] 4,999604
    ```
    
    ```r
    median(uniforme)
    ```
    
    ```
    ## [1] 5,13832
    ```

* Uma distribuição pode ser [simétrica]{.hl}, mas ter [duas (ou mais) modas diferentes]{.hl}:

    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/bimodal-1} \end{center}

* Algumas distribuições não são simétricas, mas têm uma [cauda longa]{.hl} à esquerda ou à direita.

* Dependendo da cauda, as distribuições são chamadas de [assimétricas à esquerda]{.hl} ou [assimétricas à direita]{.hl}.

* Um exemplo: receitas anuais (em milhões de dólares) de CEOs de grandes empresas:

    
    ```r
    df <- read_csv(
      './data/CEO_Salary_2012.csv',
      show_col_types = FALSE
    )
    glimpse(df)
    ```
    
    ```
    ## Rows: 500
    ## Columns: 9
    ## $ Rank                  <dbl> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, ~
    ## $ Name                  <chr> "John H Hammergren", "Ralph Lauren", "M~
    ## $ Company               <chr> "McKesson", "Ralph Lauren", "Vornado Re~
    ## $ `1-Year Pay ($mil)`   <dbl> 131,190, 66,650, 64,405, 60,940, 55,790~
    ## $ `5 Year Pay ($mil)`   <dbl> 285,020, 204,060, NA, 60,940, 96,110, 1~
    ## $ `Shares Owned ($mil)` <dbl> 51,9, 5010,4, 171,7, 8582,3, 21,5, 47,3~
    ## $ Age                   <dbl> 53, 72, 55, 67, 59, 57, 55, 59, 61, 60,~
    ## $ Efficiency            <dbl> 121, 84, NA, NA, 138, 36, 12, NA, 91, 1~
    ## $ `Log Pay`             <dbl> 8,117901, 7,823800, 7,808920, 7,784902,~
    ```

* Vamos usar apenas os nomes e os valores anuais:

    
    ```r
    salarios <- df %>% 
      select(Name, valor = `1-Year Pay ($mil)`)
    ```

* Um histograma:

    
    ```r
    salarios %>% 
      ggplot(aes(x = valor)) +
        geom_histogram(breaks = seq(0, 150, 2.5)) +
        scale_x_continuous(breaks = seq(0, 150, 10)) +
        labs(y = NULL)
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/ceos-hist-1} \end{center}

* É uma distribuição [assimétrica à direita]{.hl}: a maior parte dos CEOs têm receitas anuais "baixas", de menos de $10$ milhões. À medida que examinamos valores maiores, a quantidade de CEOs vai diminuindo lentamente.

* Observe que [a longa cauda à direita "puxa" a média para um valor mais alto do que a mediana]{.hl}.

* A moda, que corresponde à barra mais alta do histograma, é menor que a mediana (e que a média):

  
  ```r
  sumario <- salarios %>% 
    summarise(
      moda = mlv(valor, method = 'venter'),
      mediana = median(valor),
      media = mean(valor)
    )
  
  sumario
  ```
  
  ```
  ## # A tibble: 1 x 3
  ##    moda mediana media
  ##   <dbl>   <dbl> <dbl>
  ## 1  4.60    6.97  10.5
  ```

* Em um *boxplot*, também é possível detectar a assimetria pela grande quantidade de *outliers* em um extremo:

    
    ```r
    salarios %>% 
      ggplot(aes(y = valor)) +
        geom_boxplot() +
        scale_x_continuous(breaks = NULL) +
        scale_y_continuous(breaks = seq(0, 150, 10))
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/ceos-boxplot-1} \end{center}

* Com distribuições [assimétricas à esquerda]{.hl}, a situação se inverte: [a média é menor que a mediana, que é menor que a moda]{.hl}.


### Exercícios

* Ache um conjunto de dados com uma distribuição assimétrica à esquerda.

* Faça um histograma.

* Calcule a média, a mediana, e a moda dos dados.


## Re-expressão

* Muitas vezes, é recomendável [transformar a escala dos dados]{.hl} para que uma distribuição assimétrica se torne simétrica.

* No exemplo das receitas dos CEOs, podemos tomar os [logaritmos]{.hl} dos valores, em vez dos valores:

    
    ```r
    salarios_log <- salarios %>% 
      mutate(log_valor = log10(valor))
    ```

    
    ```r
    salarios_log %>% 
      ggplot(aes(x = log_valor)) +
        geom_histogram(bins = 20) +
        labs(
          x = TeX('$\\log_{10}$ valor'),
          y = NULL
        )
    ```
    
    ```
    ## Warning: Removed 3 rows containing non-finite values (`stat_bin()`).
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/ceos-log-hist-1} \end{center}

* O logaritmo de um número na base $10$ é, essencialmente, a quantidade de dígitos do número, vista como uma grandeza contínua.

* Logaritmos negativos vêm de valores entre $0$ e $1$.

* Logaritmo zero vem do valor $1$.

* Valores iguais ou menores que zero não têm logaritmo definido.

* Por isso a mensagem de aviso sobre $3$ valores removidos. São valores iguais a zero:

  
  ```r
  salarios_log %>% 
    filter(valor == 0)
  ```
  
  ```
  ## # A tibble: 3 x 3
  ##   Name               valor log_valor
  ##   <chr>              <dbl>     <dbl>
  ## 1 Malon Wilkus           0      -Inf
  ## 2 Matthew J Lambiase     0      -Inf
  ## 3 Larry Page             0      -Inf
  ```

* Uma vantagem desta escala logarítmica é que podemos entender melhor o histograma. Os dados não estão amontoados de um lado só.


### Exercícios

* Quais são os registros com $\log_{10} \text{valor} < 0$?

* Faça um *boxplot* dos logaritmos das receitas.


## Medidas de posição

### Quantis

* Na [seção sobre *boxplots*](#mediana), falamos sobre [quantis]{.hl}, que são medidas de posição.

* Em R, a função `quantile` calcula quantis de um vetor:

    
    ```r
    salarios %>% 
      pull(valor) %>% 
      quantile()
    ```
    
    ```
    ##        0%       25%       50%       75%      100% 
    ##   0,00000   3,88500   6,96750  13,36125 131,19000
    ```

* Você pode passar frações entre $0$ e $1$ para `quantile`. Por exemplo, para calcular o primeiro, o quinto, e o décimo percentis^[Um percentil é um quantil da forma $k/100$, para $k$ natural, $0 \leq k \leq 100$.] das receitas dos CEOs:

    
    ```r
    salarios %>% 
      pull(valor) %>% 
      quantile(c(.01, .05, .1))
    ```
    
    ```
    ##      1%      5%     10% 
    ## 0,48695 1,48405 2,19400
    ```


## Medidas de dispersão

* Tão importantes quanto as medidas de centralidade são as medidas de dispersão (ou [espalhamento]{.hl}).

* Elas informam [o quanto os dados variam]{.hl}.


### Amplitude

* Uma medida simples é a [diferença entre o valor máximo e o valor mínimo]{.hl}.

* Lembrando do nosso exemplo das idades dos alunos:

    
    ```r
    idades
    ```
    
    ```
    ##  [1] 20 20 20 20 20 20 21 21 21 21 22 22 22 23 23 23 23 24 24 65
    ```

* A função `range` retorna o mínimo e o máximo:

    
    ```r
    range(idades)
    ```
    
    ```
    ## [1] 20 65
    ```

* A amplitude destes dados é, então
    
    
    ```r
    range(idades)[2] - range(idades)[1]
    ```
    
    ```
    ## [1] 45
    ```

* A diferença de idade entre o aluno mais novo e o mais velho é de $45$ anos, um valor alto, por causa do velhinho.


### IQR

* Na [seção sobre *boxplots*](#mediana), também falamos sobre o [intervalo interquartil]{.hl} (IQR).

* No *boxplot*, é a [altura da caixa]{.hl}. Para as idades dos alunos:

    
    ```r
    idades %>% 
      as_tibble() %>% 
      ggplot(aes(y = value)) +
        geom_boxplot() +
        scale_x_continuous(breaks = NULL) +
        scale_y_continuous(breaks = seq(20, 70, 5))
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/idades-bp-1} \end{center}

* O IQR é a diferença entre o primeiro e o terceiro quartis:

    
    ```r
    summary(idades)
    ```
    
    ```
    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ##   20,00   20,00   21,50   23,75   23,00   65,00
    ```
    
    ```r
    unname(summary(idades)[5] - summary(idades)[2])
    ```
    
    ```
    ## [1] 3
    ```
    
    ```r
    IQR(idades)
    ```
    
    ```
    ## [1] 3
    ```

* Ou seja, [os $50\%$ centrais dos alunos têm idade entre $20$ e $23$ anos]{.hl}, um IQR de $3$. 

* É uma variação pequena, porém mais fiel à realidade do que a amplitude, que é alta por causa do velhinho.

* Quanto maior o IQR, mais espalhados estão os dados.


### Variância

* Agora, vamos trabalhar com os pesos (kg) e alturas (m) de um time de basquete:

  
  ```r
  medidas <- tibble(
    altura = .025 * 
      c(72, 74, 68, 76, 74, 69, 72, 79, 70, 69, 77, 73),
    peso = 0.45 * 
      c(180, 168, 225, 201, 189, 192, 197, 162, 174, 171, 185, 210)
  )
  
  medidas
  ```
  
  ```
  ## # A tibble: 12 x 2
  ##   altura  peso
  ##    <dbl> <dbl>
  ## 1   1.8   81  
  ## 2   1.85  75.6
  ## 3   1.7  101. 
  ## 4   1.9   90.4
  ## 5   1.85  85.0
  ## 6   1.72  86.4
  ## # i 6 more rows
  ```

  
  ```r
  summary(medidas$altura)
  ```
  
  ```
  ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  ##   1,700   1,744   1,812   1,819   1,863   1,975
  ```
  
  
  ```r
  summary(medidas$peso)
  ```
  
  ```
  ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  ##   72,90   77,96   84,15   84,53   89,10  101,25
  ```

* A [variância]{.hl} é a maneira mais usada de medir o espalhamento em torno da média.

* Para calcular a variância das alturas e a variância dos pesos, precisamos calcular valores intermediários.

* O [desvio]{.hl} de um valor é a [diferença entre o valor e a média]{.hl}. O desvio pode ser positivo ou negativo.

  
  ```r
  d_medidas <- medidas %>% 
    mutate(
      d_altura = altura - mean(altura),
      d_peso = peso - mean(peso)
    )
  
  d_medidas
  ```
  
  ```
  ## # A tibble: 12 x 4
  ##   altura  peso d_altura d_peso
  ##    <dbl> <dbl>    <dbl>  <dbl>
  ## 1   1.8   81    -0.0188 -3.53 
  ## 2   1.85  75.6   0.0312 -8.92 
  ## 3   1.7  101.   -0.119  16.7  
  ## 4   1.9   90.4   0.0813  5.92 
  ## 5   1.85  85.0   0.0312  0.525
  ## 6   1.72  86.4  -0.0938  1.88 
  ## # i 6 more rows
  ```

* Vamos calcular o desvio médio das alturas e o desvio médio dos pesos:

  
  ```r
  d_medidas %>% 
    summarize(
      d_medio_altura = mean(d_altura),
      d_medio_peso = mean(d_peso)
    )
  ```
  
  ```
  ## # A tibble: 1 x 2
  ##   d_medio_altura d_medio_peso
  ##            <dbl>        <dbl>
  ## 1              0    -3.55e-15
  ```

* []{#desvio-medio-zero} Não foi uma boa idéia. [O desvio médio sempre é igual a zero]{.hl}.^[Você vai provar isto em um exercício.] (O R pode mostrar algum valor diferente de zero por causa da precisão limitada dos números de ponto flutuante.)

* Como resolver isto? Elevando os desvios ao quadrado:

  
  ```r
  dq_medidas <- d_medidas %>% 
    mutate(
      dq_altura = d_altura^2,
      dq_peso = d_peso^2
    )
  
  dq_medidas
  ```
  
  ```
  ## # A tibble: 12 x 6
  ##   altura  peso d_altura d_peso dq_altura dq_peso
  ##    <dbl> <dbl>    <dbl>  <dbl>     <dbl>   <dbl>
  ## 1   1.8   81    -0.0188 -3.53   0.000352  12.4  
  ## 2   1.85  75.6   0.0312 -8.92   0.000977  79.7  
  ## 3   1.7  101.   -0.119  16.7    0.0141   280.   
  ## 4   1.9   90.4   0.0813  5.92   0.00660   35.1  
  ## 5   1.85  85.0   0.0312  0.525  0.000977   0.276
  ## 6   1.72  86.4  -0.0938  1.88   0.00879    3.52 
  ## # i 6 more rows
  ```

* Agora temos os [desvios quadrados]{.hl}, que são todos [positivos]{.hl}.

* O [desvio quadrado médio]{.hl} vai ser a [variância]{.hl}:

  
  ```r
  dq_medidas %>% 
    summarize(
      var_altura = mean(dq_altura),
      var_peso = mean(dq_peso)
    )
  ```
  
  ```
  ## # A tibble: 1 x 2
  ##   var_altura var_peso
  ##        <dbl>    <dbl>
  ## 1    0.00678     63.3
  ```

* Uma vantagem da variância é que *outliers* (que têm desvios quadrados maiores) contribuem mais do que elementos próximos à média (que têm desvios quadrados menores).

* Uma desvantagem da variância é que a [sua unidade é o quadrado da unidade dos valores]{.hl}.

* Neste exemplo, as unidades são $m^2$ e $kg^2$!


### Desvio-padrão

* É melhor trabalhar com [a raiz quadrada da variância]{.hl}, que chamamos de [desvio-padrão]{.hl}.

* As unidades são as mesmas que as unidades dos dados.

  
  ```r
  dq_medidas %>% 
    summarize(
      dp_altura = sqrt(mean(dq_altura)),
      dp_peso = sqrt((mean(dq_peso)))
    )
  ```
  
  ```
  ## # A tibble: 1 x 2
  ##   dp_altura dp_peso
  ##       <dbl>   <dbl>
  ## 1    0.0824    7.96
  ```

* Claro que o R tem funções para calcular isso: `var` e `sd` (*standard deviation*):

  
  ```r
  medidas %>% 
    summarize(
      altura_var = var(altura),
      altura_dp = sd(altura),
      peso_var = var(peso),
      peso_dp = sd(peso)
    )
  ```
  
  ```
  ## # A tibble: 1 x 4
  ##   altura_var altura_dp peso_var peso_dp
  ##        <dbl>     <dbl>    <dbl>   <dbl>
  ## 1    0.00740    0.0860     69.1    8.31
  ```

* Mas os valores são diferentes dos que calculamos. Por quê?


### Definições

* Para uma [população]{.hl} com $N$ elementos e média $\mu$, a [variância]{.hl} é

  $$
  \sigma^2 = \frac{\sum_{i=1}^N (x_i - \mu)^2}{N}
  $$

  e o [desvio-padrão]{.hl} é

  $$
  \sigma = \sqrt{\frac{\sum_{i=1}^N (x_i - \mu)^2}{N}}
  $$


* Para uma [amostra]{.hl} com $n$ elementos e média $\bar x$, a [variância]{.hl} é

  $$
  s^2 = \frac{\sum_{i=1}^n (x_i - \bar x)^2}{n-1}
  $$

  e o [desvio-padrão]{.hl} é

  $$
  s = \sqrt{\frac{\sum_{i=1}^n (x_i - \bar x)^2}{n -1}}
  $$

* Nós calculamos a versão [populacional]{.hl} destas medidas.

* R calcula a versão [amostral]{.hl} destas medidas.

* Reveja os cálculos e entenda a diferença.

* Note, também, que as [medidas populacionais são representadas por letras gregas]{.hl} --- $\mu$, $\sigma^2$, $\sigma$ ---, enquanto as [medidas amostrais são representadas por letras latinas]{.hl} --- $\bar x$, $s^2$, $s$.

::: {.rmdimportant latex=1}

Mais adiante no curso, você vai entender por que o denominador da variância amostral é $n - 1$, em vez de $n$. 

Nada é por acaso, nem mesmo em Estatística.

:::


### Exercícios

* Quando a variância e o desvio-padrão de um conjunto de dados são iguais a zero?

* Mostre que o [desvio médio de qualquer conjunto de valores é igual a zero](#desvio-medio-zero). 

  Ou seja, considere o conjunto

  $$
  \{x_1, x_2, \ldots, x_n\}
  $$

  e prove que
  
  $$
  \sum_{i = 1}^n (x_i - \bar x) = 0
  $$

  Manipule apenas as variáveis $x_i$. [Não use exemplos, pois eles não provam o enunciado geral.]{.hl}
  
  **Dica:** lembre que $\displaystyle \bar x = \frac{\sum_{i = 1}^n x_i}{n}$.


## Coeficiente de variação

* Em um conjunto de dados, o desvio-padrão é uma medida importante da variação dos dados.

* Mas [a unidade do desvio-padrão muda de um conjunto de dados para outro]{.hl}: alturas em metros, pesos em quilos etc.

* [Podemos eliminar as unidades expressando o desvio-padrão em termos da média]{.hl}.

* O resultado é a fração $\frac{\sigma}{\mu}$ (na população) ou $\frac{s}{\bar x}$ na amostra.

* Esta fração é o [coeficiente de variação (CV)]{.hl}.

* O CV não tem unidades. 

* Para as alturas do exemplo dos jogadores de basquete:

  A média das alturas é $1{,}82$ metros.
  
  O desvio-padrão das alturas é $0{,}09$ metros.
  
  O CV é aproximadamente $0{,}0473$. 
  
    
    ```r
    statip::cv(medidas$altura)
    ```
    
    ```
    ## [1] 0,04729982
    ```
  Em outras palavras, [para as alturas, um desvio-padrão corresponde a $4{,}73\%$ da média]{.hl}.
  
* Para os pesos:

  A média dos pesos é $84{,}53$ quilos.
  
  O desvio-padrão dos pesos é $8{,}31$ quilos.
  
  O CV é aproximadamente $0{,}0983$. 
  
    
    ```r
    statip::cv(medidas$peso)
    ```
    
    ```
    ## [1] 0,09834649
    ```

  Em outras palavras, [para os pesos, um desvio-padrão corresponde a $9{,}83\%$ da média]{.hl}.

* Segundo estes valores, a variação dos pesos é cerca de $2$ vezes maior do que a variação das alturas.

::: {.rmdcaution latex=1}

O coeficiente de variação sempre faz sentido para dados do [nível racional]{.hl} ([veja a definição](#niveis-de-dados)) --- i.e., dados onde o zero é absoluto.

Para dados apenas intervalares, o uso do CV pode levar a conclusões absurdas, como você terá chance de ver no exercício.

:::


### Exercícios

* Considere o seguinte conjunto de temperaturas (em graus Celsius):

    
    ```r
    celsius <- c(0, 10, 20, 30, 40)
    ```

* E as [mesmas temperaturas]{.hl} (em graus Fahrenheit):

    
    ```r
    fahrenheit <- 9 * celsius / 5 + 32
    ```

* Calcule para cada um dos dois vetores acima:

  1. A média,
  
  1. O desvio-padrão,
  
  1. O coeficiente de variação.

* As temperaturas são as mesmas (apenas em unidades diferentes), mas os CVs são diferentes. Por quê?

* Agora, convertemos as [mesmas temperaturas]{.hl} para [a escala Kelvin](https://pt.wikipedia.org/wiki/Kelvin):

    
    ```r
    kelvin <- celsius + 273.15
    ```

* E para a [escala Rankine](https://pt.wikipedia.org/wiki/Rankine):

    
    ```r
    rankine <- fahrenheit + 459.67
    ```

* Calcule para cada um dos dois vetores acima:

  1. A média,
  
  1. O desvio-padrão,
  
  1. O coeficiente de variação.

* Compare:

  1. As médias de `celsius` e `kelvin`,
  
  1. As médias de `fahrenheit` e `rankine`,

  1. Os desvios-padrão de `celsius` e `kelvin`,
  
  1. Os desvios-padrão de `fahrenheit` e `rankine`,
  
  1. Os coeficientes de variação de `kelvin` e `rankine`.
  
* Explique o que houve.


## Escores-padrão

* Para qualquer conjunto de dados, [a unidade usada é uma escolha arbitrária]{.hl}.

* Para alturas, por exemplo, podemos usar metros, centímetros, pés, polegadas etc.

* A escolha de unidades é tão arbitrária que podemos escolher uma unidade (que dificilmente vai ter nome) que faça com que [a média do conjunto de dados seja zero]{.hl} e que [o desvio-padrão seja igual a $1$]{.hl}.

* Isto equivale a tomar, como unidade, o [*desvio-padrão acima da média*]{.hl}.

* Os valores, nesta nova unidade, são chamados de [escores-padrão]{.hl}.

* Dizemos que os valores foram [padronizados]{.hl}.

* Vamos usar as alturas dos jogadores de basquete.

* [Para fazer a altura média virar zero, basta subtrair, de cada altura,  a altura média:]{.hl}

  
  ```r
  alturas <- medidas$altura
  mean(alturas)
  ```
  
  ```
  ## [1] 1,81875
  ```
  
  ```r
  alturas_deslocadas <- alturas - mean(alturas)
  mean(alturas_deslocadas)
  ```
  
  ```
  ## [1] 0
  ```

* []{#dividir-por-sd} [Para fazer o desvio-padrão ser igual a $1$, basta dividir estes valores pelo desvio-padrão dos dados originais:]{.hl}

  
  ```r
  sd(alturas)
  ```
  
  ```
  ## [1] 0,08602656
  ```
  
  ```r
  alturas_padronizadas <- alturas_deslocadas / sd(alturas)
  sd(alturas_padronizadas)
  ```
  
  ```
  ## [1] 1
  ```

* Tome, por exemplo, o seguinte jogador:

  
  ```r
  altura <- alturas[1] 
  altura
  ```
  
  ```
  ## [1] 1,8
  ```
  
  ```r
  altura_padronizada <- (alturas[1] - mean(alturas)) / sd(alturas)
  altura_padronizada
  ```
  
  ```
  ## [1] -0,217956
  ```

  Faça as contas: o valor da altura padronizada deste jogador significa que a altura dele está $0{,}217956$ [desvios-padrão *abaixo* da altura média]{.hl}.

* [No geral:]{.hl} 

  * Se a média for $\bar x$, e
  
  * Se o desvio-padrão for $s$, 
  
  * Os escores-padrão $z_i$ vão ser
    $$
    z_i = \frac{x_i - \bar x}{s}
    $$

* Em R, a função `scale` faz isso:

  
  ```r
  medidas <- medidas %>% 
    mutate(altura_padronizada = scale(altura)[,1])
  
  medidas %>% 
    select(altura, altura_padronizada)
  ```
  
  ```
  ## # A tibble: 12 x 2
  ##   altura altura_padronizada
  ##    <dbl>              <dbl>
  ## 1   1.8              -0.218
  ## 2   1.85              0.363
  ## 3   1.7              -1.38 
  ## 4   1.9               0.944
  ## 5   1.85              0.363
  ## 6   1.72             -1.09 
  ## # i 6 more rows
  ```

  
  ```r
  mean(medidas$altura_padronizada)
  ```
  
  ```
  ## [1] -0,000000000000000004610683
  ```
  
  ```r
  sd(medidas$altura_padronizada)
  ```
  
  ```
  ## [1] 1
  ```
  
* A função `scale` foi feita para receber e retornar [matrizes]{.hl}. Como estamos trabalhando com [vetores]{.hl}, usamos `scale(altura)[,1]` para tomar apenas a primeira (e única) coluna do resultado.


### Exercícios

* Por que, [quando calculamos as alturas deslocadas divididas pelo desvio-padrão das alturas](#dividir-por-sd), temos certeza de que a média dos valores resultantes não mudou?

* Padronize os pesos dos jogadores de basquete.

* Confira a média e o desvio-padrão dos pesos padronizados.

* Crie um *scatterplot* de peso por altura.

* Crie um *scatterplot* de peso padronizado por altura padronizada.

* Compare os dois *scatterplots*. O que muda de um para outro?


## Teorema de Tchebychev

* Grosso modo, [quanto mais alto o desvio-padrão, maior é a distância da média até os valores]{.hl}.

* Ou seja, [quanto menor o desvio-padrão, maior é a proporção de valores que estão próximos à média]{.hl}.

* O teorema de Tchebychev quantifica esta idéia:

  ::: {.rmdimportant}
  
  Em [*qualquer*]{.hl} distribuição, a proporção de valores [dentro de $\pm k$ desvios-padrão $(k > 1)$ da média]{.hl} é de, [*no mínimo*]{.hl}
  $$
  1 - \frac{1}{k^2}
  $$
  
  :::


### Exemplo



* Lembre-se do [conjunto de dados sobre os totais de horas de sono de diversos mamíferos](#mamiferos):

  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/msleep-hist-1} \end{center}

* Média e desvio-padrão:

  
  ```r
  media <- mean(df$value)
  media
  ```
  
  ```
  ## [1] 10,43373
  ```
  
  ```r
  dp <- sd(df$value)
  dp
  ```
  
  ```
  ## [1] 4,450357
  ```

* Qual a proporção de espécies que estão a $1{,}3$ ou menos desvios-padrão de distância da média?

  
  ```r
  k <- 1.3
  inicio <- media - k * dp
  inicio
  ```
  
  ```
  ## [1] 4,648271
  ```
  
  ```r
  fim <- media + k * dp
  fim
  ```
  
  ```
  ## [1] 16,2192
  ```

* O teorema diz que no mínimo a seguinte proporção das espécies está dentro deste intervalo:

  
  ```r
  proporcao_teorema <- 1 - 1 / k^2
  proporcao_teorema
  ```
  
  ```
  ## [1] 0,408284
  ```

* Graficamente:

  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-263-1} \end{center}

* Vamos conferir:

  
  ```r
  total_especies <- df %>% nrow()
  total_especies
  ```
  
  ```
  ## [1] 83
  ```
  
  
  ```r
  especies_intervalo <- df %>% 
    filter(value >= inicio & value <= fim) %>% 
    nrow()
  especies_intervalo
  ```
  
  ```
  ## [1] 64
  ```
  
  
  ```r
  proporcao_real <- especies_intervalo / total_especies
  proporcao_real
  ```
  
  ```
  ## [1] 0,7710843
  ```

* Como o teorema usa apenas a média e o desvio-padrão, e [mais nenhuma informação sobre a distribuição dos valores]{.hl} --- forma, simetria etc. --- o que ele garante é, muitas vezes, mais fraco do que a realidade.

* Neste exemplo, o teorema garantia [no mínimo]{.hl} $40{,}83\%$ das espécies a $1{,}30$ ou menos desvios-padrão de distância da média.

* A proporção verdadeira é $77{,}11\%$ das espécies.

* O teorema está certo (claro), mas, sem mais informações sobre a distribuição dos dados, o teorema não pode ser mais preciso.


### Exercício

* Uma loja recebe uma média de $20$ clientes por dia, com desvio-padrão de $2$ clientes.

* Em um ano ($365$ dias), em quantos dias, no mínimo, o número de clientes ficou entre $16$ e $24$, inclusive?



<!--chapter:end:medidas.Rmd-->

--- 
knit: "bookdown::render_book"
---


# Probabilidades {#probs}

## Vídeo 1

```{=latex}
\begin{center} \url{https://youtu.be/hJfyzRzEs44} \end{center}
```

## Espaço amostral

* Para falar em probabilidades, precisamos falar de [experimentos, resultados, espaços amostrais, e eventos]{.hl}.

* Um [experimento probabilístico]{.hl} é um experimento cujo resultado exato é desconhecido *a priori*; mais ainda: [executar o experimento diversas vezes, nas mesmas condições, pode produzir resultados diferentes]{.hl}.

* O [espaço amostral]{.hl} é o conjunto de [todos os resultados possíveis]{.hl} de um experimento probabilístico, representados de alguma forma.

* Exemplos:

  1. Experimento: lançar uma moeda;  
     Espaço amostral: $\{ K, C \}$ (onde $K$ é cara, $C$ é coroa).
  
  1. Experimento: lançar $2$ moedas;  
     Espaço amostral: $\{ (K,K), (K,C), (C,K), (C,C) \}$.
     
  1. Experimento: lançar um dado;  
     Espaço amostral: $\{ 1, 2, 3, 4, 5, 6 \}$.
  
  1. Experimento: lançar $2$ dados:  
     Espaço amostral: $\{ (1, 1), (1, 2), \ldots, (6, 5), (6, 6) \}$.


## Evento

* Um [evento]{.hl} é um subconjunto do espaço amostral; ou seja, um evento é um [conjunto de resultados]{.hl}.

* Exemplos:

  1. Lançar uma moeda e [obter cara]{.hl}:  
     $\{ K \}$.
  
  1. Lançar 2 moedas e [obter resultados iguais]{.hl}:  
     $\{ (K,K), (C,C) \}$.
  
  1. Lançar um dado e [obter um número maior que 4]{.hl}:  
     $\{ 5, 6 \}$.
  
  1. Lançar 2 dados e [obter 2 números iguais]{.hl}:  
     $\{ (1,1), (2,2), (3,3), (4,4), (5,5), (6,6) \}$.
  
* Dizemos que [o evento $A$ ocorreu]{.hl} se o experimento foi realizado e [o resultado obtido está no conjunto que corresponde ao evento $A$]{.hl}.


## Análise Combinatória

* Para calcularmos probabilidades, vamos precisar [contar a quantidade de certos objetos complexos]{.hl} (formados por partes menores).

* Existem [técnicas de contagem]{.hl}, que são assunto de [Análise Combinatória]{.hl}.

* Exemplos:

  1. Quantas senhas de $6$ caracteres (dentre letras e dígitos apenas) existem, [sem distinguir entre minúsculas e maiúsculas]{.hl}?
  
     
     \begin{comment}

     
     * O conjunto de letras e dígitos tem $36$ elementos.
     
     * A resposta é $36^{6} = 2.176.782.336$.
     
     
     \end{comment}

     

  1. E se não puder haver repetição de caracteres?
  
     
     \begin{comment}

     
     * Agora, a resposta é
       $$
       36 \cdot 35 \cdot 34 \cdot 33 \cdot 32 \cdot 31 = 1.402.410.240
       $$
     
     
     \end{comment}


* Se você nunca tiver estudado técnicas de contagem, ou se quiser revisar ou aprender mais, consulte o excelente livro @morgadoAnaliseCombinatoriaProbabilidade2004.


## Probabilidade clássica

* Nesta abordagem simples --- que pode não ser a correta para o problema que estamos tentando resolver ---, [cada resultado do espaço amostral tem a mesma chance de ocorrer]{.hl}.

* Ou seja, para um evento $A$, a probabilidade $P(A)$ é

  $$
  P(A) = \frac{\text{Qtde de resultados em } A}{\text{Qtde de resultados no espaço amostral}}
  $$
  
* Exemplo: de um baralho normal, de $52$ cartas, qual a probabilidade de escolher uma carta ao acaso e obter

  1. Uma carta de ouros?
  
     
     \begin{comment}

     
     $$
     \frac{13}{52} = \frac{1}{4}
     $$
     
     
     \end{comment}

     
  2. Uma carta vermelha?
  
     
     \begin{comment}

     
     $$
     \frac{26}{52} = \frac{1}{2}
     $$
     
     
     \end{comment}


  3. Uma carta de figura (J, Q ou K)?
  
     
     \begin{comment}

     
     $$
     \frac{12}{52} = \frac{3}{13}
     $$
     
     
     \end{comment}


  4. Uma carta de ouros, copas, paus ou espadas?
  
     
     \begin{comment}

     
     $$
     \frac{52}{52} = 1
     $$
     
     
     \end{comment}

  
  5. Um carta de um naipe verde?
  
     
     \begin{comment}

     
     $$
     \frac{0}{52} = 0
     $$
     
     
     \end{comment}


  ::: {.rmdcaution latex=1}
  
  Só podemos usar este raciocínio [se todos os resultados do experimento tiverem a mesma probabilidade]{.hl} de ocorrer. 
  
  Como a carta é escolhida [ao acaso]{.hl}, esta condição é satisfeita neste exemplo.
  
  :::


## Probabilidade empírica

* Baseada em [repetições de um experimento probabilístico]{.hl}.

* Nesta abordagem, a probabilidade de um evento é sua [frequência relativa]{.hl}:

  $$
  P(A) = \frac{\text{Qtde de ocorrências de } A}{\text{Qtde total de repetições do experimento}}
  $$
  
* Esta abordagem é fácil de usar quando é possível repetir o experimento muitas vezes, nas mesmas condições (lançar uma moeda, escolher uma carta de um baralho).

* Em outros casos (calcular a probabilidade de um candidato vencer uma eleição), não é possível repetir o experimento nas mesmas condições.

* Exemplo: se lançarmos uma moeda não-viciada muitas vezes, a proporção de caras vai ser aproximadamente $0{,}5$. Os gráficos abaixo mostram como, à medida que o número de lançamentos aumenta (no eixo horizontal), a proporção de caras (no eixo vertical) vai se aproximando de $0{,}5$:
  
    

    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/lancar-1} \end{center}


* A [[lei dos grandes números]{.hl}](https://pt.wikipedia.org/wiki/Lei_dos_grandes_n%C3%BAmeros) é um resultado matemático que diz, essencialmente, que, [quando o número $n$ de repetições de um experimento tende a infinito, a frequência relativa de um evento tende à sua probabilidade real]{.hl}.


  ::: {.rmdcaution latex=1}
  
  Um [erro comum]{.hl} é achar que, se houve poucas caras nos lançamentos mais recentes, então a probabilidade de o resultado ser cara no próximo lançamento é maior, para que a proporção de caras fique mais perto de $0{,}5$.
  
  A lei dos grandes números fala sobre os resultados do experimento quando $n$ tende ao infinito, [não no futuro próximo]{.hl}.
  
  Em lançamentos [independentes]{.hl} de uma moeda [não-viciada]{.hl}, a probabilidade de cara [sempre]{.hl} é $0{,}5$.
  
  :::


## Probabilidade subjetiva

* Outra interpretação de probabilidades se baseia na [crença]{.hl} --- a estimativa de um agente sobre a ocorrência de um evento.

* Uma maneira de quantificar a crença é através de [apostas justas]{.hl}.

* Por exemplo, você aposta com um amigo que

  * Se o seu time de basquete^[Considere que, no basquete, o empate é impossível.] vencer o próximo jogo contra o dele, ele pagará $\$3$ para você.
  
  * Se o time dele vencer o próximo jogo contra o seu, você pagará $\$1$ para ele. 
  
* Se você considera justa esta aposta, então [você crê que a probabilidade de o time dele vencer é $3$ vezes maior do que a probabilidade de o seu time vencer]{.hl}. 

* Como [a soma das probabilidades de um evento e do evento complementar deve ser $1$]{.hl}, isto equivale a dizer que

  $$
  P(\text{seu time vencer}) = 1/4 \qquad\text{e}\qquad  P(\text{time dele vencer}) = 3/4
  $$
  
* Em mais detalhes:

  * Você pode receber menos com uma probabilidade maior,
  
  * Seu amigo pode receber mais com uma probabilidade menor,
  
  * A razão entre as quantias ($3$) é contrabalançada exatamente pela razão entre as probabilidades ($1/3$).


## Formalização de probabilidades {#axiomas}

* Para trabalhar matematicamente com probabilidades, é preciso definir as "regras do jogo".

* [Tudo]{.hl} que se pode concluir sobre probabilidades é [consequência dos seguintes axiomas]{.hl}, [formulados por Kolmogorov em 1933](https://pt.wikipedia.org/wiki/Axiomas_de_probabilidade#Axiomas):

  1. $0 \leq P(A) \leq 1$, para qualquer evento $A$.

  2. $P(\Omega) = 1$, onde $\Omega$ é o espaço amostral (o conjunto de todos os resultados possíveis do experimento em questão);

  3. $P(\bar A) = 1 - P(A)$, onde $\bar A$ é o evento [complementar]{.hl} de $A$ (i.e., o evento que corresponde a $A$ [não]{.hl} ocorrer)

  4. $P(A_1 \cup \cdots \cup A_n) = P(A_1) + \cdots + P(A_n)$, onde $A_1, \ldots, A_n$ são eventos [disjuntos dois a dois]{.hl} (i.e., $A_i$ e $A_j$ [não podem ocorrer ao mesmo tempo]{.hl}, para todo par $(i, j)$ com $i \neq j$).

* Mostre, a partir dos axiomas acima, que

  $$
  P(\varnothing) = 0
  $$

  
     Dica\ \ \hrulefill 

  
  $$\varnothing = \bar \Omega $$
  
  
     \vspace{-1.5ex} \hrulefill \vspace{1ex} 



  
     \begin{comment}

  
  $$
  \begin{aligned}
    P(\varnothing) 
    &= P(\bar \Omega) \\
    &= 1 - P(\Omega) & \text{(pelo axioma 3)}\\
    &= 1 - 1 & \text{(pelo axioma 2)} \\
    &= 0
  \end{aligned}
  $$
  
  
     \end{comment}

  
    
  

## Eventos independentes (explicação informal)

* Se a ocorrência de $A$ [não influencia]{.hl} a ocorrência de $B$, nem vice-versa, dizemos que os eventos $A$ e $B$ são [independentes]{.hl}.

* Exemplo: 

  * O experimento é [lançar um dado duas vezes]{.hl}.

  * $A$ é o evento o [primeiro lançamento deu um número par]{.hl}.

  * $B$ é o evento [o segundo lançamento deu 6]{.hl}.
  
  * Saber se $A$ aconteceu [não nos ajuda]{.hl} em nada a estimar se $B$ aconteceu.
  
  * Aqui, [$A$ e $B$ são independentes]{.hl}.

* Outro exemplo: 

  * O experimento é [lançar um dado duas vezes]{.hl}.

  * $A$ é o evento o [primeiro lançamento deu um número menor que $3$]{.hl}.

  * $B$ é o evento [a soma dos dois lançamentos é maior que $8$]{.hl}.
  
  * Agora, saber se $A$ aconteceu [ajuda]{.hl} a estimar se $B$ aconteceu.
  
  * Na verdade, [se $A$ aconteceu, $B$ é impossível]{.hl} (a probabilidade de $B$, dado $A$, é $0$).
  
  * Se $A$ não aconteceu, a probabilidade de $B$ é $5/12$.
  
  * Aqui, $A$ e $B$ [não são independentes]{.hl}.

* []{#independentes-produto} A probabilidade de os eventos $A$ e $B$ acontecerem ao mesmo tempo é escrita como

  $$
  P(A, B) \qquad \text{ou como} \qquad P(A \cap B)
  $$

* Quando $A$ e $B$ são [independentes]{.hl},

  $$
  P(A, B) = P(A) \cdot P(B)
  $$

* Ou seja, [quando $A$ e $B$ são independentes, a probabilidade de $A$ e $B$ acontecerem ao mesmo tempo é igual ao produto das probabilidades de $A$ e de $B$]{.hl}.

* Mais adiante, vamos ver uma definição formal de independência, e vamos provar esta última igualdade.


## $P(A \cup B)$ com $A$ e $B$ não-disjuntos

* Um dos [axiomas de probabilidade](#axiomas) fala sobre a probabilidade da união de vários eventos [disjuntos]{.hl} (sem elementos em comum):

  $$
  P(A_1 \cup \cdots \cup A_n) = P(A_1) + \cdots + P(A_n)
  $$

* E [se os eventos não forem disjuntos]{.hl}?

* Veja a figura abaixo:

  ???
  
* Imagine que a probabilidade de um evento é proporcional à sua área nesta figura.

* Se você somar a área de $A$ com a área de $B$, você vai estar [contando duas vezes]{.hl} a área comum aos dois (a área que corresponde a $A \cap B$).

* Por isso, [o certo é "descontar" esta área]{.hl}.

* O resultado é

  $$
  P(A \cup B) = P(A) + P(B) - P(A \cap B)
  $$

* Exemplo: suponha que 25% das pessoas têm cachorro, 29% das pessoas têm gato, e 12% das pessoas têm cachorro e gato.

* Qual a probabilidade de que uma pessoa tenha gato ou cachorro ou ambos?

  $$
  \begin{aligned}
  P(\text{cachorro } \cup \text{ gato}) 
    &= P(\text{cachorro}) + P(\text{gato}) - P(\text{cachorro } \cap \text{ gato}) \\
    &= 0{,}25 + 0{,}29 - 0{,}12 \\
    &= 0{,}42
  \end{aligned}
  $$


* No geral, para $n$ eventos $A_1, \ldots, A_n$:

  $$
  \begin{aligned}
  P(A_1 \cup \cdots \cup A_n) &=
    P(A_1) + \cdots + P(A_n) \\
    & - P(A_1 \cap A_2) - \cdots - P(A_{n-1} \cap A_n) \\
    & + P(A_1 \cap A_2 \cap A_3) + \cdots + P(A_{n-2} \cap A_{n-1} \cap A_n) \\
    & \cdots \\
    & \pm P(A_1 \cap \cdots \cap A_n )
  \end{aligned}
  $$

* Na última linha

  * o sinal vai ser $+$ se $n$ for ímpar;

  * o sinal vai ser $-$ se $n$ for par;
  
  * poderíamos escrever, então, $(-1)^{n+1} \cdot P(A_1 \cap \cdots \cap A_n )$.
  
* Escreva, seguindo o padrão acima, a expressão para 

  $$
  P(A \cup B \cup C)
  $$
  
  
     \begin{comment}

  
  $$
  \begin{aligned}
  P(A \cup B \cup C) &=
    P(A) + P(B) + P(C) \\
    & - P(A \cap B) - P(A \cap C) - P(B \cap C) \\
    & + P(A \cap B \cap C)
  \end{aligned}
  $$

  
     \end{comment}

  
  
## Problema do aniversário

### Solução teórica

* Em uma sala estão $25$ pessoas escolhidas ao acaso. 

* [Qual a probabilidade de que pelo menos $2$ delas façam aniversário no mesmo dia do ano?]{.hl}

* Premissas:

  * Os dias dos aniversários das pessoas são independentes.

  * Cada dia do ano tem a mesma probabilidade de ser o aniversário de alguém.

  * Vamos ignorar anos bissextos. Cada ano tem 365 dias.

* Queremos achar $P(I)$, onde $I$ é o evento de que pelo menos duas pessoas têm aniversários iguais.

* Vamos calcular a probabilidade $P(N)$ de que [não]{.hl} haja aniversários iguais.

* Este evento $N$ é o complementar do evento $I$, i.e., $N = \bar I$.

* Então, $P(I) = 1 - P(N)$.

* $P(N)$ é a probabilidade de que todos os aniversários caiam em dias diferentes:

  * A pessoa $1$ pode ter nascido em qualquer dia do ano.
  
  * A pessoa $2$ precisa ter nascido em algum dos outros $364$ dias. A probabilidade é $\frac{364}{365}$.
  
  * A pessoa $3$ precisa ter nascido em algum dos outros $363$ dias. A probabilidade é $\frac{363}{365}$.
  
  * $\ldots$
  
  * A pessoa $25$ precisa ter nascido em algum dos outros $341$ dias. A probabilidade é $\frac{341}{365}$.

* [Como os nascimentos são independentes](#independentes-produto), a probabilidade de todos os eventos acontecerem juntos é o produto das probabilidades:

  $$
  P(N) = \frac{364}{365} \cdot \frac{363}{365} \cdot \cdots \cdot
         \frac{341}{365}
       = \frac{364 \cdot 363 \cdot \cdots \cdot 341}{365^{24}}
  $$

* O que dá

    
    ```r
    pn <- prod((364:341)/365)
    pn
    ```
    
    ```
    ## [1] 0,4313003
    ```

* Então, $P(I)$ é

    
    ```r
    1 - pn
    ```
    
    ```
    ## [1] 0,5686997
    ```

* Surpreso? Com $25$ pessoas na sala, é mais provável haver do que não haver coincidência de aniversários!


### Simulação

* Vamos simular milhares de salas com $25$ pessoas satisfazendo as [premissas](#premissas) e ver em quantas delas há coincidência de aniversários. Examine o código abaixo:

    
    ```r
    nsalas <- 1e4
    npessoas <- 25
    
    coincidencia <- function(sala) {
    
      # Se a quantidade de valores únicos for diferente 
      # da quantidade total de valores, então há repetição  
      !(length(unique(sala)) == length(sala))
      
    }
    
    gerar_e_testar <- function(npessoas) {
      
      # Escolhemos, ao acaso, npessoas números entre 1 e 365,
      # com reposição
      sala <- sample(1:365, npessoas, replace = TRUE)
      
      # Testamos se há alguma coincidência de aniversários
      coincidencia(sala)
      
    }
    
    simular <- function(npessoas, nsalas) {
      
      resultados <- replicate(nsalas, gerar_e_testar(npessoas))
      
      # Como resultados é um vetor booleano, tirar a média
      # vai dar a proporção de resultados verdadeiros,
      # que é a probabilidade.
      mean(resultados)
    
    }
    
    simular(npessoas, nsalas)
    ```
    
    ```
    ## [1] 0,5666
    ```

### Para diferentes valores de $n \in \{2, 3, \ldots, 50\}$

#### Soluções teóricas {-}

* Vamos calcular as probabilidades de coincidência para diferentes quantidades $n$ de pessoas na sala e fazer um gráfico:

    
    ```r
    npessoas <- 2:50
    
    p <- function(n) {
      
      # Fórmula geral, para n pessoas
      1 - prod((364:(366 - n))/365)
      
    }
    
    probs <- sapply(npessoas, p)
    
    grafico <- probs %>% 
      as_tibble() %>% 
      ggplot(aes(x = npessoas, y = value)) +
        geom_line(color = 'blue') +
        labs(
          title = 'Probabilidades de coincidência com n pessoas',
          y = NULL,
          x = 'n'
        )
    
    grafico
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/n-teorico-1} \end{center}

* Este problema é tão usado em cursos de probabilidade que o R oferece as funções `pbirthday` e `qbirthday`.

* Leia a ajuda de `pbirthday` e recrie o gráfico acima usando esta função.

* Leia a ajuda de `qbirthday` e responda:

  * Quantas pessoas são necessárias para que a probabilidade de uma ou mais coincidências seja de pelo menos $50\%$?
  
    
     \begin{comment}

    
    Os valores *default* dos argumentos resolvem este problema:
    
    
    ```r
    qbirthday()
    ```
    
    ```
    ## [1] 23
    ```

    
     \end{comment}

    
  * Quantas pessoas são necessárias para que a probabilidade de uma ou mais coincidências seja de pelo menos $90\%$?
  
    
     \begin{comment}

    
    
    ```r
    qbirthday(.9)
    ```
    
    ```
    ## [1] 41
    ```

    
     \end{comment}


  * Quantas pessoas são necessárias para que haja uma probabilidade de pelo menos $50\%$ de que $5$ ou mais pessoas façam aniversário no mesmo dia?

    
     \begin{comment}

    
    
    ```r
    qbirthday(coincident = 5)
    ```
    
    ```
    ## [1] 313
    ```

    
     \end{comment}



#### Simulação {-}


```r
nsalas <- 1e3
npessoas <- 2:50

probs_sim <- sapply(npessoas, simular, nsalas)

grafico +
  geom_line(
    data = as_tibble(probs_sim),
    mapping = aes(y = value),
    color = 'red'
  ) +
  labs(
    subtitle = '(teóricas em azul, simulações em vermelho)'
  )
```



\begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/n-simul-1} \end{center}


### Premissas mais realistas

* [Vamos considerar anos bissextos]{.hl}. O total de dias muda para $366$, mas um dos dias ($29$ de fevereiro) tem $1/4$ da probabilidade de um dia normal de ser o aniversário de alguém.

* [Além disso]{.hl}, vamos supor que haja $165$ dias em que a probabilidade de alguém nascer é $25\%$ maior do que nos $200$ dias normais.

* A solução teórica é bem mais complexa do que no caso uniforme!

* Vamos fazer apenas a simulação. 

* Preste atenção no vetor `pesos`, que representam as probabilidades de dias diferentes:

  * $200$ dias normais têm peso $4$;
  
  * $165$ dias mais prováveis têm peso $5$;
  
  * $1$ dia ($29$ de fevereiro) tem peso $1$.
  
* [Estes pesos não são probabilidades, porque a soma deles não é $1$]{.hl}.

* A função `sample` [normaliza]{.hl} automaticamente estes pesos. 

* Normalizar significa dividir todos os valores pela mesma constante, de forma que a soma seja $1$.

    
    ```r
    nsalas <- 1e3
    npessoas <- 2:50
    
    pesos <- c(
      rep(4, 200),    # dias normais
      rep(5, 165),    # dias mais prováveis
      1               # 29 de fevereiro
    )
    
    gerar_e_testar <- function(npessoas, pesos) {
      
      sala <- sample(1:366, npessoas, replace = TRUE, prob = pesos)
      coincidencia(sala)
      
    }
    
    simular <- function(npessoas, nsalas, pesos) {
      
      resultados <- replicate(nsalas, gerar_e_testar(npessoas, pesos))
      mean(resultados)
    
    }
    
    novas_probs <- sapply(npessoas, simular, nsalas, pesos)
    
    grafico +
      geom_line(
        data = as_tibble(novas_probs),
        mapping = aes(y = value),
        color = 'red'
      ) +
      labs(
        subtitle = paste(
          '(teóricas, premissas originais: azul;', 
          'simulações, novas premissas: vermelho)'
        )
      )
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/premissas-real-1} \end{center}

* As novas premissas não mudaram muita coisa.

* Escreva a versão normalizada do vetor `pesos`.

  
     \begin{comment}

  
  O vetor original é
  
  $$
  (
  \underbrace{4, \ldots, 4}_{200\text{ vezes}},\;\; 
  \underbrace{5, \ldots, 5}_{165\text{ vezes}},\;\;
  1
  )
  $$
  
  A soma de todos os elementos é 
  
  $$
  200 \cdot 4 + 165 \cdot 165 + 1 = 1.626
  $$
  
  O vetor normalizado fica
  
  $$
  \left(
  \underbrace{\frac4{1626}, \ldots, \frac4{1626}}_{200\text{ vezes}},\;\; 
  \underbrace{\frac5{1626}, \ldots, \frac5{1626}}_{165\text{ vezes}},\;\; 
  \frac1{1626}
  \right)
  $$
  
  ou
  
  $$
  \left(
  \underbrace{\frac2{813}, \ldots, \frac2{813}}_{200\text{ vezes}},\;\; 
  \underbrace{\frac5{1626}, \ldots, \frac5{1626}}_{165\text{ vezes}},\;\; 
  \frac1{1626}
  \right)
  $$

  
     \end{comment}

  

## Exercícios

### Semanas com mais nascimentos

* Imagine que $50\%$ dos nascimentos de um ano aconteçam em um período de $15$ semanas, e o restante dos nascimentos seja distribuído de maneira uniforme no restante do ano. Ignore anos bissextos. 

* Faça simulações como na seção anterior ($2 \leq n \leq 50$) e construa o gráfico comparando com as probabilidades teóricas (com as premissas originais).

* Interprete o resultado.

  
     \begin{comment}

  
  * $15$ semanas são $105$ dias.

  * O restante do ano tem $260$ dias.

    
    ```r
    nsalas <- 1e4
    npessoas <- 2:50
    
    # Probabilidades teóricas, premissas originais
    p <- function(n) {
      
      1 - prod((364:(366 - n))/365)
      
    }
    
    probs <- sapply(npessoas, p)
    
    grafico <- probs %>% 
      as_tibble() %>% 
      ggplot(aes(x = npessoas, y = value)) +
        geom_line(color = 'blue') +
        labs(
          title = 'Probabilidades de coincidência com n pessoas',
          y = NULL,
          x = 'n'
        )
    
    # Probabilidades com 15 semanas com 50% dos nascimentos
    pesos <- c(
      rep(50/105, 105),    # dias das semanas com mais nascimentos
      rep(50/260, 260)     # dias das semanas normais
    )
    
    coincidencia <- function(sala) {
      
      !(length(unique(sala)) == length(sala))
      
    }
    
    gerar_e_testar <- function(npessoas, pesos) {
      
      sala <- sample(1:365, npessoas, replace = TRUE, prob = pesos)
      coincidencia(sala)
      
    }
    
    simular <- function(npessoas, nsalas, pesos) {
      
      resultados <- replicate(nsalas, gerar_e_testar(npessoas, pesos))
      mean(resultados)
    
    }
    
    novas_probs <- sapply(npessoas, simular, nsalas, pesos)
    
    grafico +
      geom_line(
        data = as_tibble(novas_probs),
        mapping = aes(y = value),
        color = 'red'
      ) +
      labs(
        subtitle = paste(
          '(teóricas com premissas originais: azul;', 
          'simulações com novas premissas: vermelho)'
        )
      )
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-272-1} \end{center}

  * Com as novas premissas, a probabilidade de coincidência é maior para quase todos os valores de $n$: a linha vermelha está acima da linha azul.
  
  * Como metade dos nascimentos está concentrada nas $15$ semanas, a probabilidade de haver coincidência para $n$ pessoas é maior do que com as premissas originais. 
  
  
     \end{comment}

  
  


### Pôquer

* Uma mão de pôquer consiste de $5$ cartas retiradas ao acaso de um baralho de $32$ cartas ($4$ naipes, cada um com cartas 7, 8, 9, 10, J, Q, K, A).

* Calcule as seguintes probabilidades teoricamente e através de simulações.

  1. Qual a probabilidade de obter uma mão sem ases? 
  
     
     \begin{comment}

    
     * A ordem das cartas não importa.
 
     * Basta calcular o número de mãos possíveis usando as $28$ cartas que  não são ases:
     
       $$
       {28 \choose 5} = 98.280
       $$

     * E dividir pelo total de mão possíveis:
     
       $$
       {32 \choose 5} = 201.376
       $$

     * O resultado é aproximadamente $0{,}49$.
     
     * Criando as cartas:

       
       ```r
       baralho <- expand_grid(
         numero = c(7:10, 'J', 'Q', 'K', 'A'),
         naipe = c('♥', '♦', '♣', '♠')
       ) %>% 
         mutate(carta = paste(numero, naipe)) %>% 
         pull(carta)
       ```

     * Função para gerar uma mão:
    
       
       ```r
       mao <- function(){
         sample(baralho, size = 5)
       }
       ```

     * Testar se a mão tem (pelo menos) um ás:

       
       ```r
       tem_as <- function(mao) {
         
         any(str_starts(mao, 'A'))
         
       }
       ```

     * Simulação:

       
       ```r
       nsim <- 1e6
       maos <- rerun(nsim, mao())
       ```
       
       ```
       ## Warning: `rerun()` was deprecated in purrr 1.0.0.
       ## i Please use `map()` instead.
       ##   # Previously
       ##   rerun(1000000, mao())
       ## 
       ##   # Now
       ##   map(1:1000000, ~ mao())
       ## This warning is displayed once every 8 hours.
       ## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was generated.
       ```
       
       ```r
       mean(!map_lgl(maos, tem_as))
       ```
       
       ```
       ## [1] 0,488225
       ```
    
     
     \end{comment}


  1. Qual a probabilidade de obter $4$ ases?
  
     
     \begin{comment}

     
     * A ordem das cartas não importa.
     
     * Existe uma mão com $4$ ases para cada uma das outras $28$ cartas. Ou seja, existem $28$ mãos com $4$ ases.
     
     * Logo, a resposta é 
     
       $$
       \frac{28}{\binom{32}{5}} = 
       \frac{28}{201.376} \approx 0{,}000139
       $$
       
     * Uma probabilidade de pouco mais de [um décimo de milésimo]{.hl}.
          
     * Testar se a mão tem $4$ ases:
     
       
       ```r
       tem_4_ases <- function(mao) {
         
         sum(str_starts(mao, 'A')) == 4
         
       }
       ```
     
     * Simular (usando as mesmas mãos geradas na resposta anterior):
     
       
       ```r
       mean(map_lgl(maos, tem_4_ases))
       ```
       
       ```
       ## [1] 0,000125
       ```
     
     
     \end{comment}

     
  1. Qual a probabilidade de obter uma sequência (7 a J, 8 a Q, 9 a K, ou 10 a A) de naipes quaisquer?
  
     
     \begin{comment}

     
     * São $4$ possibilidades para o primeiro número da sequência (7, 8, 9, 10).
     
     * Cada uma das $5$ cartas pode ter um de $4$ naipes, dando $4^5$      possibilidades.
     
     * Então, existem $4 \cdot 4^5 = 4^6 = 4.096$ sequências.
     
     * A resposta é 
     
       $$
       \frac{4.096}{\binom{32}{5}} =
       \frac{4.096}{201.376} 
       \approx 0{,}020340
       $$
          
     * Testar se a mão tem sequência:
     
       
       ```r
       tem_seq <- function(mao) {
       
         all(c(7, 8, 9, 1, 'J') %in% str_sub(mao, 1, 1)) ||
         all(c(8, 9, 1, 'J', 'Q') %in% str_sub(mao, 1, 1)) ||
         all(c(9, 1, 'J', 'Q', 'K') %in% str_sub(mao, 1, 1)) ||
         all(c(1, 'J', 'Q', 'K', 'A') %in% str_sub(mao, 1, 1))
         
       }
       ```
     
     * Simular (usando as mesmas mãos geradas na primeira resposta):
     
       
       ```r
       mean(map_lgl(maos, tem_seq))
       ```
       
       ```
       ## [1] 0,020403
       ```
     
     
     \end{comment}

     
  1. Qual a probabilidade de obter uma sequência (7 a J, 8 a Q, 9 a K, ou 10 a A) do mesmo naipe?

     
     \begin{comment}

     
     * Cada naipe tem $4$ sequências possíveis.
     
     * O total de sequências do mesmo naipe, então, é $4 \cdot 4 = 16$.
     
     * A resposta é
     
       $$
       \frac{16}{\binom{32}{5}} = 
       \frac{16}{201.376} \approx
       0{,}000079
       $$

     * [É mais improvável obter uma sequência do mesmo naipe do que obter $4$ ases.]{.hl}
     
     * Testar se a mão tem sequência do mesmo naipe:
     
       
       ```r
       tem_seq_naipe <- function(mao) {
         
         tem_seq(mao) && (
           all(str_ends(mao, '♥')) ||
           all(str_ends(mao, '♦')) ||
           all(str_ends(mao, '♠')) ||
           all(str_ends(mao, '♣'))
         )
         
       }
       ```
     
     * Simular:
         
       
       ```r
       mean(map_lgl(maos, tem_seq_naipe))
       ```
       
       ```
       ## [1] 0,000067
       ```
     
     
     \end{comment}

     

### Dados

* Calcule as seguintes probabilidades teoricamente e através de simulações.

  1. Você lança um dado não-viciado $6$ vezes. Qual a probabilidade de que saiam os $6$ números?
  
  1. Idem, se você lançar o dado $10$ vezes.
  

## Vídeo 2

```{=latex}
\begin{center} \url{https://youtu.be/NVP-MwtGp0Q} \end{center}
```


## Probabilidade condicional

* [Em um mesmo experimento, saber que um evento $B$ aconteceu pode dar informação sobre um outro evento $A$.]{.hl}

* Por exemplo, ao lançar um dado, a probabilidade de $A$ --- [conseguir um $6$]{.hl} --- é de $1/6$.

* Se formos informados que o evento $B$ --- [o lançamento deu um número maior que $3$]{.hl} --- ocorreu, então a probabilidade de ter conseguido um $6$ passa para $1/3$.

* Escrevemos

  $$
  P(A) = 1/6
  $$

  e
  
  $$
  P(A \mid B) = 1/3
  $$

* $P(A \mid B)$ é a [probabilidade de $A$ ocorrer, dado que $B$ ocorreu]{.hl}.

* É uma probabilidade [condicional]{.hl}. Estamos [condicionando sobre $B$]{.hl}.


### Exemplo: Titanic

* A seguinte tabela mostra as quantidades de pessoas no Titanic, categorizadas como sobreviventes ou não, e divididas pela classe:

    
    ```
    ##           Classe
    ## Sobreviveu    1    2    3 Tripulação Total
    ##      Não    122  167  528        673  1490
    ##      Sim    203  118  178        212   711
    ##      Total  325  285  706        885  2201
    ```


#### Probabilidade de ser tripulante {-}

* Escolha uma das $2.201$ pessoas [ao acaso]{.hl}.

* Qual é a probabilidade de a pessoa escolhida [ser um tripulante]{.hl}?

* Esta é uma probabilidade [não-condicional]{.hl}: basta dividir o total de tripulantes pelo total de pessoas:

  $$
  P(\text{tripulante}) = 
  \frac
  {885}
  {2.201}
  $$

* A tabela está na variável `tit_tab`. Em R, podemos indexar uma tabela pelos nomes. O primeiro índice corresponde à linha, o segundo à coluna:

    
    ```r
    ptrip <- 
      tit_tab['Total', 'Tripulação'] / tit_tab['Total', 'Total']
    
    ptrip
    ```
    
    ```
    ## [1] 0,40209
    ```

#### Probabilidade de não ser tripulante {-}

* Escolha uma das $2.201$ pessoas [ao acaso]{.hl}.

* Qual é a probabilidade de a pessoa escolhida [não ser um tripulante]{.hl}?

* Esta é uma probabilidade [não-condicional]{.hl}: basta dividir o total de não-tripulantes pelo total de pessoas:

  $$
  P(\text{não-tripulante}) = 
  \frac
  {325 + 285 + 706}
  {2.201}
  $$

* Em R, podemos selecionar várias células de uma tabela; basta usar um vetor como índice:

    
    ```r
    ntrip <- sum(tit_tab['Total', c('1', '2', '3')])
    
    ntrip / tit_tab['Total', 'Total']
    ```
    
    ```
    ## [1] 0,59791
    ```

* Mas nem era preciso fazer este cálculo. Basta perceber que "ser tripulante" e "ser não-tripulante" são [eventos complementares]{.hl}. Daí, 

  $$
  P(\text{não-tripulante}) = 1 - P(\text{tripulante})
  $$ 

    
    ```r
    1 - ptrip
    ```
    
    ```
    ## [1] 0,59791
    ```


#### Probabilidade de sobreviver {-}

* Escolha uma das $2.201$ pessoas [ao acaso]{.hl}.

* Qual é a probabilidade de a pessoa escolhida [ter sobrevivido]{.hl}?

* Esta é uma probabilidade [não-condicional]{.hl}: basta dividir o total de sobreviventes pelo total de pessoas:

  $$
  P(\text{sobrevivente}) = 
  \frac
  {711}
  {2.201}
  $$

    
    ```r
    tit_tab['Sim', 'Total'] / tit_tab['Total', 'Total']
    ```
    
    ```
    ## [1] 0,323035
    ```


#### Probabilidade de ser de primeira classe {-}

* Escolha uma das $2.201$ pessoas [ao acaso]{.hl}.

* Qual é a probabilidade de a pessoa escolhida [ser da primeira classe]{.hl}?

* Esta é uma probabilidade [não-condicional]{.hl}: basta dividir o total de passageiros da primeira classe pelo total de pessoas:

  $$
  P(\text{1ª classe}) = 
  \frac
  {325}
  {2.201}
  $$

    
    ```r
    tit_tab['Total', '1'] / tit_tab['Total', 'Total']
    ```
    
    ```
    ## [1] 0,1476602
    ```


#### Probabilidade de sobreviver *E* ser de primeira classe {-}

* Escolha uma das $2.201$ pessoas [ao acaso]{.hl}.

* Qual é a probabilidade de a pessoa escolhida [ter sobrevivido e ser da primeira classe]{.hl}?

* Isto é uma [probabilidade conjunta]{.hl} --- a probabilidade de dois eventos terem ocorrido ao mesmo tempo. [Ainda não é uma probabilidade condicional]{.hl}.

* Queremos saber a proporção de pessoas, do total de pessoas a bordo, que eram de primeira classe e sobreviveram.

  $$
  P(\text{sobrevivente da 1ª classe}) = 
  \frac
  {203}
  {2.201}
  $$

    
    ```r
    tit_tab['Sim', '1'] / tit_tab['Total', 'Total']
    ```
    
    ```
    ## [1] 0,0922308
    ```


#### Probabilidade de uma pessoa da primeira classe sobreviver {-}

* Escolha uma das $2.201$ pessoas [ao acaso]{.hl}.

* Qual é a probabilidade de a pessoa escolhida [ter sobrevivido, dado que a pessoa estava na primeira classe]{.hl}?

* Isto é uma [probabilidade condicional]{.hl}, escrita como

  $$
  P(\text{sobrevivente } \mid \text{ 1ª classe})
  $$

* Cuidado, agora.

* Já sabemos que a pessoa é da primeira classe. Logo, [restringimos o universo a estas 325 pessoas]{.hl}. O denominador vai ser o total de passageiros da primeira classe:

  $$
  P(\text{sobrevivente } \mid \text{ 1ª classe}) = 
  \frac
  {203}
  {325}
  $$

    
    ```r
    tit_tab['Sim', '1'] / tit_tab['Total', '1'] 
    ```
    
    ```
    ## [1] 0,6246154
    ```

* Perceba que 

  $$
  P(\text{sobreviveu} \mid \text{1ª classe} )
  $$

  é o mesmo que
  
  $$
  \frac{P(\text{sobreviveu } \cap \text{ 1ª classe})}{P(\text{1ª classe})}
  $$

#### Probabilidade de um sobrevivente ser da primeira classe {-}

* Escolha uma das $2.201$ pessoas [ao acaso]{.hl}.

* Qual é a probabilidade de a pessoa escolhida [ser da primeira classe, dado que ela sobreviveu]{.hl}?

* Isto é outra [probabilidade condicional]{.hl}, escrita como

  $$
  P(\text{1ª classe } \mid \text{ sobreviveu})
  $$

* [Não é a mesma probabilidade]{.hl} que $P(\text{sobreviveu} \mid \text{1ª classe})$.

* Em português:

  * [$P(\text{sobreviveu} \mid \text{1ª classe})$]{.hl} é a probabilidade de
  
    * A pessoa sobreviver, dado que era da primeira classe;
    
    * Equivalentemente: alguém da primeira classe sobreviver.

  * [$P(\text{1ª classe } \mid \text{ sobreviveu})$]{.hl} é a probabilidade de
  
    * A pessoa ter sido da primeira classe, dado que sobreviveu;
    
    * Equivalentemente: alguém que sobreviveu ter sido da primeira classe.
    
  * Releia até entender.

* Agora, restringimos o universo às pessoas que sobreviveram. Dentre estas, quantas são da primeira classe?

  $$
  P(\text{1ª classe } \mid \text{ sobreviveu}) = 
  \frac
  {203}
  {711}
  $$

    
    ```r
    tit_tab['Sim', '1'] / tit_tab['Sim', 'Total']
    ```
    
    ```
    ## [1] 0,2855134
    ```

  ::: {.rmdimportant latex=1}
  
  Este é um exemplo de que $P(A \mid B)$ pode ser [diferente]{.hl} de $P(B \mid A)$.
  
  :::


### Definição de probabilidade condicional

* Como vimos nos exemplos, [para calcular $P(A \mid B)$, restringimos o universo aos elementos onde $B$ acontece]{.hl}, e, deste universo, verificamos quantos elementos também correspondem a $A$ acontecer --- isto é, [elementos onde $A \cap B$ acontece]{.hl}.

* Em termos de frequência relativa:

  $$
  \frac{\text{ocorrências de } A \cap B}{\text{ocorrências de }B}
  $$

* Em termos de probabilidade, a definição é

  $$
  P(A \mid B) \quad=\quad \frac{P(A \cap B)}{P(B)}
  $$


### Exercícios

No Titanic,

1. Qual a probabilidade de um tripulante sobreviver?

1. Qual a probabilidade de um sobrevivente ser tripulante?

1. Qual a probabilidade de um não-tripulante sobreviver?

1. Qual a probabilidade de um sobrevivente não ser tripulante?

1. Compare as probabilidades condicionais de uma pessoa sobreviver dado que

   a. Ela estava na 1ª classe. (Já calculada no exemplo acima: $0{,}62$.)
   
   a. Ela estava na 2ª classe.
   
   a. Ela estava na 3ª classe.
   
   a. Ela era da tripulação.
   
   Que conclusões você tira?
 

## Probabilidade conjunta

* Imagine que queremos calcular a probabilidade de dois eventos $A$ e $B$ acontecerem [ao mesmo tempo]{.hl}.

* Ou seja, queremos descobrir [a probabilidade conjunta $P(A \cap B)$]{.hl}.

* Muitas vezes, é difícil calcular esta probabilidade diretamente.

* A fórmula para calcular $P(A \mid B)$ nos dá uma maneira de calcular $P(A \cap B)$:

  $$
  P(A \mid B) \;=\; \frac{P(A \cap B)}{P(B)} 
  \quad\iff\quad
  P(A \cap B) \;=\; P(A \mid B) \cdot P(B)
  $$
* Ou, invertendo $A$ e $B$,

  $$
  P(B \mid A) \;=\; \frac{P(A \cap B)}{P(A)} 
  \quad\iff\quad
  P(A \cap B) \;=\; P(B \mid A) \cdot P(A)
  $$

* Em palavras: 

  * A [probabilidade de $A$ e $B$ acontecerem juntos]{.hl} é a [probabilidade de $A$ dado que $B$ aconteceu]{.hl}, multiplicada pela [probabilidade de $B$]{.hl}.
  
  * Ou, invertendo $A$ e $B$, a [probabilidade de $A$ e $B$ acontecerem juntos]{.hl} é a [probabilidade de $B$ dado que $A$ aconteceu]{.hl}, multiplicada pela [probabilidade de $A$]{.hl}.


## Independência

* [Mais acima](#eventos-independentes-explica%C3%A7%C3%A3o-informal), vimos que, para dois eventos [independentes]{.hl} $A$ e $B$, a probabilidade conjunta $P(A \cap B)$ é igual a $P(A) \cdot P(B)$.

* Olhando para as fórmulas acima para a probabilidade conjunta, se $A$ e $B$ forem independentes, então

  $$
  \begin{aligned}
  P(A \cap B) &= P(A \mid B) \cdot P(B) \\
              &= P(A) \cdot P(B)
  \end{aligned}
  $$

  o que nos diz que

  $$
  P(A \mid B) = P(A)
  $$

* Da mesma forma,

  $$
  P(B \mid A) = P(B)
  $$

* Em palavras: [saber que um dos eventos ocorreu não altera a probabilidade do outro evento]{.hl}.

* Qualquer uma das $3$ igualdades pode ser tomada como a definição formal de [eventos independentes]{.hl}.


### Exemplos

#### Estar na primeira classe e sobreviver são independentes? {-}

* A probabilidade de sobreviver, dado que a pessoa estava na 1ª classe, é 

  $$
  P(\text{sobreviver} \mid \text{1ª classe}) = 
  \frac{203}{325}
  $$

    
    ```r
    tit_tab['Sim', '1'] / tit_tab['Total', '1']
    ```
    
    ```
    ## [1] 0,6246154
    ```

* Mas a probabilidade (incondicional) de sobreviver é 

  $$
  P(\text{sobreviver}) = \frac{711}{2.201}
  $$

    
    ```r
    tit_tab['Sim', 'Total'] / tit_tab['Total', 'Total']
    ```
    
    ```
    ## [1] 0,323035
    ```

* Como as probabilidades são diferentes, os eventos [não são independentes]{.hl}.

* Verifique se $P(\text{sobreviver} \cap \text{1ª classe}) = P(\text{sobreviver}) \cdot P(\text{1ª classe})$.


#### Faltas e turno de trabalho {-}

* Numa empresa: 

  * $75$ funcionários trabalham no turno diurno, com um número de faltas de $3$ por semana.

  * $25$ funcionários trabalham no turno noturno, com um número de faltas de $1$ por semana.

  * Faltar é independente do turno de trabalho?
  
* Vamos construir uma tabela:

    
    ```r
    faltas <- array(
      c(3, 1, 72, 24),
      dim = c(2, 2)
    ) %>% 
      addmargins()
    
    dimnames(faltas) = list(
        'Turno' = c('Diurno', 'Noturno', 'Total'),
        'Presença' = c('Faltou', 'Presente', 'Total')
      )
    
    faltas
    ```
    
    ```
    ##          Presença
    ## Turno     Faltou Presente Total
    ##   Diurno       3       72    75
    ##   Noturno      1       24    25
    ##   Total        4       96   100
    ```

* A probabilidade (incondicional) de faltar é

  $$
  P(\text{Faltou}) = 
  \frac{4}
  {100}
  $$

    
    ```r
    faltas['Total', 'Faltou'] / faltas['Total', 'Total']
    ```
    
    ```
    ## [1] 0,04
    ```

* A probabilidade de faltar no turno diurno é

  $$
  P(\text{Faltou} \mid \text{Diurno}) = 
  \frac{3}
  {75}
  $$

    
    ```r
    faltas['Diurno', 'Faltou'] / faltas['Diurno', 'Total']
    ```
    
    ```
    ## [1] 0,04
    ```

* Como as probabilidades são iguais, os eventos [são independentes]{.hl}.

* Verifique que $P(\text{Faltou}) = P(\text{Faltou} \mid \text{Noturno})$.


## Probabilidade total

### Exemplo

* Dentre $80$ homens, $30$ têm olhos azuis.

* Dentre $50$ mulheres, $20$ têm olhos azuis. 

* Neste grupo de pessoas, qual a [probabilidade de ter olhos azuis]{.hl}?

* Homens e mulheres formam uma [partição]{.hl} deste grupo --- i.e., cada pessoa [só pode]{.hl} ser homem ou mulher (não ambos) e cada pessoa [precisa]{.hl} ser homem ou mulher.

* O evento "ter olhos azuis" se subdivide em dois casos [mutuamente exclusivos]{.hl}:

  1. Ter olhos azuis e ser homem;
  
  1. Ter olhos azuis e ser mulher.

* Vamos chamar os eventos de

  * $A$ = ter olhos azuis
  
  * $H$ = ser homem
  
  * $M$ = ser mulher

* Calculamos a probabilidade $P(A)$ somando as probabilidades dos dois casos:

  $$
  \begin{aligned}
  P(A) &= P(A \cap H) + P(A \cap M)
  \end{aligned}
  $$

* Então,

  $$
  \begin{aligned}
  P(A) = \frac{30}{130} + \frac{20}{130} = \frac{50}{130} \approx 0{,}39
  \end{aligned}
  $$

* Ou, [antes de somar]{.hl}, podemos transformar as probabilidades conjuntas em produtos de uma probabilidade condicional por uma probabilidade não-condicional:

  $$
  \begin{aligned}
  P(A) &= P(A \cap H) + P(A \cap M) \\
       &= P(A \mid H) P(H) + P(A \mid M) P(M)
  \end{aligned}
  $$

* O que nos dá o mesmo resultado:

  $$
  \begin{aligned}
  P(A) &= \frac{30}{80} \cdot \frac{80}{130} + \frac{20}{50} \cdot \frac{50}{130} \\
       &= \frac{50}{130} \\
       &\approx 0{,}39
  \end{aligned}
  $$


## Teorema de Bayes

### Exemplo

* De [todos]{.hl} os *emails*, $60\%$ são *spam*:

  $$
  P(\text{spam}) = 0{,}6
  $$

* De todos os *emails* [que são *spam*]{.hl}, $90\%$ contêm a palavra "compre":

  $$
  P(\text{compre} \mid \text{spam}) = 0{,}9
  $$

* De [todos]{.hl} os *emails* (*spam* ou não), $70\%$ contêm a palavra "compre":

  $$
  P(\text{compre}) = 0{,}7
  $$

* Você acaba de receber um *email*. [Antes de você abri-lo, qual a probabilidade de o *email* ser *spam*]{.hl}? 

* Bem, [na ausência de informação adicional]{.hl}, $P(\text{spam}) = 0{,}6$.

* Você abre o *email*. [Ele contém a palavra "compre"]{.hl}. 

* Agora, qual a probabilidade de ser *spam*?

  $$
  P(\text{spam} \mid \text{compre}) = {}?
  $$

* Lembre-se de que

  $$
  P(\text{compre} \cap \text{spam}) = P(\text{spam} \mid \text{compre}) \cdot P(\text{compre})
  $$

* Mas também

  $$
  P(\text{compre} \cap \text{spam}) = P(\text{compre} \mid \text{spam}) \cdot P(\text{spam})
  $$

* As duas expressões são iguais:

  $$
  P(\text{spam} \mid \text{compre}) \cdot P(\text{compre}) = P(\text{compre} \mid \text{spam}) \cdot P(\text{spam})
  $$

* Isolando o termo que queremos descobrir:

  $$
  P(\text{spam} \mid \text{compre}) = \frac{P(\text{compre} \mid \text{spam}) \cdot P(\text{spam})}{P(\text{compre})}
  $$

* Substituindo os valores:

  $$
  P(\text{spam} \mid \text{compre}) = \frac{0{,}9 \cdot 0{,}6}{0{,}7} \approx 0{,}77
  $$

* Isto é [inferência bayesiana]{.hl}: 

  1. Começamos com uma probabilidade não-condicional: [*a priori*]{.hl}, $P(\text{spam}) = 0{,}6$;
  
  1. Obtivemos [nova informação]{.hl}: o *email* contém "compre";
  
  1. Usamos esta informação para calcular uma probabilidade condicional, [*a posteriori*]{.hl}: 

    $$
    P(\text{spam} \mid \text{compre}) = \frac{P(\text{compre} \mid \text{spam}) \cdot P(\text{spam})}{P(\text{compre})}
    $$
  
* Perceba que, para isso, precisamos da probabilidade não-condicional $P(\text{compre})$ (no denominador).


### No geral

$$
P(A \mid B) = \frac{P(B \mid A) \cdot P(A)}{P(B)}
$$

* E se você não souber $P(B)$?

* Use o teorema da probabilidade total:

  $$
  P(B) = P(B \cap A_1) + P(B \cap A_2) + \cdots + P(B \cap A_n)
  $$
  onde os $A_i$ formam uma partição da população.

* Isto equivale a 

  $$
  P(B) = P(B \mid A_1)P(A_1) + P(B \mid A_2)P(A_2) + \cdots + P(B \mid A_n)P(A_n)
  $$


### Outro exemplo

* Uma [doença rara]{.hl} afeta $5$ pessoas em $100.000$.

* O exame que detecta a doença tem precisão de $99{,}9\%$; i.e., [quando uma pessoa está doente, o exame dá positivo $99{,}9\%$ das vezes]{.hl}.

* [Quando uma pessoa *não* está doente, o exame dá positivo $1\%$ das vezes]{.hl}. Este caso é um falso positivo.

* Você faz o exame, e [o resultado é positivo]{.hl}. 

* [Dado este resultado, qual a probabilidade de você ter a doença?]{.hl}

* Vamos nomear os eventos:

  * $D = {}$ você está doente;
  
  * $ND = {}$ você [não]{.hl} está doente;
  
  * $+ = {}$ o exame deu positivo;
  
  * $- = {}$ o exame deu negativo.
  
* Vamos usar Bayes:

  $$
  P(D \mid +) = \frac{P(+ \mid D)P(D)}{P(+)}
  $$

* $P(+ \mid D) = 0{,}999$, pelo enunciado.

* $P(D) = 0{,}00005$, pelo enunciado. 

* Daí, $P(ND) = 1 - P(D) = 0{,}99995$.

* Não temos $P(+)$, mas podemos achar usando o [teorema da probabilidade total](#probabilidade-total), lembrando que o enunciado diz que $P(+ \mid ND) = 0{,}01$:

  $$
  \begin{aligned}
  P(+) &= P(+ \cap D) \;+\; P(+ \cap ND) \\
     &= P(+ \mid D)P(D) \;+\; P(+ \mid ND)P(ND) \\
     &= 0{,}999 \cdot 0{,}00005 \;+\; 0{,}01 \cdot 0{,}99995 \\
     &= 0{,}01004945
  \end{aligned}
  $$

* Inserindo os valores no teorema de Bayes:

  $$
  \begin{aligned}
    P(D \mid +) &= \frac{P(+ \mid D)P(D)}{P(+)} \\
                &= \frac{0{,}999 \cdot 0{,}00005}{0{,}01004945} \\
                &= 0{,}00497
  \end{aligned}
  $$

* A probabilidade de estar doente é [menos do que $0{,}5\%$]{.hl}!

* Você provavelmente esperava uma probabilidade maior.

* Qual das $3$ probabilidades usadas no cálculo fez o resultado ser tão pequeno?

  * $P(+ \mid D)$?
  
  * $P(D)$?
  
  * $P(+)$?
  

<!--chapter:end:probabilidades.Rmd-->

--- 
knit: "bookdown::render_book"
---





# Variáveis aleatórias {#variaveis}

## Vídeo

```{=latex}
\begin{center} \url{https://youtu.be/8PI-rfsgNdE} \end{center}
```

## O que é uma variável aleatória?

* Uma variável aleatória é uma maneira de [associar a cada resultado do espaço amostral um número real]{.hl}.

* Dependendo do conjunto de números, a variável aleatória pode ser [discreta]{.hl} ou [contínua]{.hl}.

* Falamos sobre a [probabilidade]{.hl} de uma variável aleatória assumir um valor (ou uma faixa de valores).


## Exemplos

### Lançar dois dados

* Definimos $X = \text{soma dos resultados dos dois dados}$.

* Esta é uma variável aleatória [discreta]{.hl}, com $11$ valores possíveis.

* A tabela com todos os valores possíveis de $X$ e suas probabilidades é chamada de [distribuição de probabilidade]{.hl}:

\begin{longtable}{rr}
\toprule
x & P(X = x) \\ 
\midrule
2 & 1/36 \\ 
3 & 2/36 \\ 
4 & 3/36 \\ 
5 & 4/36 \\ 
6 & 5/36 \\ 
7 & 6/36 \\ 
8 & 5/36 \\ 
9 & 4/36 \\ 
10 & 3/36 \\ 
11 & 2/36 \\ 
12 & 1/36 \\ 
\bottomrule
\end{longtable}

* Graficamente:

    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/dados-plot-1} \end{center}



* Suponha que a distribuição de probabilidade de $X$ esteja na seguinte *tibble*:

    
    ```r
    glimpse(dados_distr)
    ```
    
    ```
    ## Rows: 11
    ## Columns: 3
    ## $ x          <int> 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12
    ## $ `P(X = x)` <chr> "1/36", "2/36", "3/36", "4/36", "5/36", "6/36", "5~
    ## $ num        <dbl> 0,02777778, 0,05555556, 0,08333333, 0,11111111, 0,~
    ```

  A coluna `num` tem os valores numéricos das probabilidades.

* Qual a probabilidade de conseguir [$10$ ou mais]{.hl}?

  Basta somar as probabilidades de $X=10$, $X=11$ e $X=12$:

    
    ```r
    dados_distr %>% 
      filter(x >= 10) %>% 
      pull(num) %>% 
      sum()
    ```
    
    ```
    ## [1] 0,1666667
    ```

* Qual a probabilidade de conseguir entre $6$ e $8$, inclusive?

    
    ```r
    dados_distr %>% 
      filter(x >= 6 & x <= 8) %>% 
      pull() %>% 
      sum()
    ```
    
    ```
    ## [1] 0,4444444
    ```

### Altura de um homem adulto

* Definimos $X = \text{estatura em metros de um homem brasileiro adulto, escolhido ao acaso}$.

* Esta é uma variável aleatória [contínua]{.hl}, com um número [infinito não-enumerável]{.hl} de valores.

* Segundo o [Levantamento do Perfil Antropométrico da População Brasileira Usuária do Transporte Aéreo Nacional](https://pdf4pro.com/view/levantamento-do-perfil-antropom-201-trico-10652c.html), em $2009$, a estatura média do homem brasileiro adulto era de $1{,}73$m, com desvio-padrão de $0{,}07$m.

* Vamos simular uma amostra de muitos homens desta população:

    
    ```r
    media <- 1.73
    desvio <- 0.07
    homens <- tibble(
      altura = rnorm(1e5, mean = media, sd = desvio)
    )
    ```

* Eis um histograma com as [percentagens]{.hl}:

    
    ```r
    homens_plot <- homens %>% 
      ggplot(aes(x = altura)) +
        geom_histogram(
          aes(y = after_stat(density)),
          breaks = seq(1.4, 2, 0.01)
        ) +
        scale_x_continuous(breaks = seq(1.4, 2.0, .1)) +
        labs(
          title = 'Altura de um homem brasileiro adulto',
          x = 'metros',
          y = '%'
        )
    
    homens_plot
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/homens-plot-1} \end{center}

* Agora, [sobrepomos o gráfico de uma distribuição normal]{.hl} com a mesma média e o mesmo desvio-padrão que a distribuição das alturas:

    
    ```r
    homens_normal <- homens_plot +
      stat_function(
        fun = dnorm, 
        args = list(
          'mean' = media,
          'sd' = desvio
        ),
        geom = 'line',
        color = 'red',
        linewidth = 1
      ) +
      labs(
        subtitle = paste0('com N(', media, ', ', desvio,') em vermelho')
      )
    
    homens_normal
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/homens-normal-1} \end{center}

* A curva vermelha no gráfico é a [função de densidade de probabilidade]{.hl} da distribuição normal, dada por

  $$
  \text{fdp}(x) = {\frac {1}{\sigma {\sqrt {2\pi }}}}e^{-{\frac {1}{2}}\left({\frac {x-\mu }{\sigma }}\right)^{2}}
  $$

  ::: {.rmdimportant latex=1}
  
  Em uma distribuição contínua, [não faz sentido perguntar o valor de $P(X = x)$]{.hl}. Como $X$ pode assumir uma quantidade infinita não-enumerável de valores, esta probabilidade é igual a zero!
  
  Com uma distribuição contínua, [vamos sempre perguntar sobre faixas de valores]{.hl}.
  
  :::

* Qual a probabilidade de um homem ter mais de $1{,}80$m?

  * Na amostra:
  
    
    ```r
    mean(homens$altura > 1.80)
    ```
    
    ```
    ## [1] 0,16123
    ```
  
  * Na distribuição teórica:
  
    
    ```r
    pnorm(1.80, mean = media, sd = desvio, lower.tail = FALSE)
    ```
    
    ```
    ## [1] 0,1586553
    ```
  
  * No gráfico:
  
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/maior180-plot-1} \end{center}
  
  
* Qual a probabilidade de um homem ter entre $1{,}60$m e $1{,}70$m?

  * Na amostra:
  
    
    ```r
    mean(homens$altura > 1.60 & homens$altura < 1.70)
    ```
    
    ```
    ## [1] 0,30585
    ```
  
  * Na distribuição teórica:
  
    
    ```r
    pnorm(1.70, mean = media, sd = desvio) -
    pnorm(1.60, mean = media, sd = desvio)
    ```
    
    ```
    ## [1] 0,3024722
    ```

  * No gráfico  :
  
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/entre-plot-1} \end{center}


## Valor esperado

* O [valor esperado]{.hl} (ou [esperança matemática]{.hl}) de uma variável aleatória é a [média ponderada dos valores possíveis da variável]{.hl}, considerando as probabilidades (ou, no caso contínuo, a densidade de probabilidade) como pesos.

* No caso [discreto]{.hl}:

  $$
  \mu = E(X) = \sum_i x_i \cdot P(X = x_i)
  $$

* No caso [contínuo]{.hl}:

  $$
  \mu = E(X) = \int_{-\infty}^{+\infty} x \cdot \text{fdp}(x) \text{d}x
  $$


### Lançar dois dados

* Lembrando que a *tibble* `dados_distr` contém a distribuição de probabilidades do valor da soma de dois dados, o valor esperado é

    
    ```r
    dados_distr %>% 
      summarize(E = sum(x * num)) %>% 
      pull(E)
    ```
    
    ```
    ## [1] 7
    ```


### Lançar um dado

* O valor esperado do valor obtido em um lançamento de um dado não-viciado (onde cada valor tem a probabilidade $1/6$) é

    
    ```r
    lado <- 1:6
    p <- 1/6
    sum(lado * p)
    ```
    
    ```
    ## [1] 3,5
    ```


### Altura de um homem adulto

* Estimamos o valor esperado da população simplesmente calculando a média da amostra:

    
    ```r
    mean(homens$altura)
    ```
    
    ```
    ## [1] 1,730044
    ```

* Se a variável aleatória $X$ é normalmente distribuída, com média $\mu$ e desvio-padrão $\sigma$, i.e., $X \sim \mathcal{N}(\mu, \sigma)$, então o valor esperado $E(X)$ é igual a $mu$, que é o valor da integral

  $$
  \int_{-\infty}^{+\infty} {\frac {1}{\sigma {\sqrt {2\pi }}}}e^{-{\frac {1}{2}}\left({\frac {x-\mu }{\sigma }}\right)^{2}} \text{d}x
  $$


## Propriedades do valor esperado

* Vamos ver como o valor esperado se comporta.

* O valor esperado de uma constante é ela mesma:

  $$
  E(c) = c
  $$

* Somar uma constante à variável $X$ altera $E(X)$ pelo valor da constante:

  $$
  E(X \pm c) = E(X) \pm c
  $$

* Multiplicar a variável $X$ por uma constante multiplica $E(X)$ pelo valor da constante:

  $$
  E(c \cdot X) = c \cdot E(X)
  $$

* O valor esperado da soma (resp. diferença) de duas variáveis aleatórias é a soma (resp. diferença) dos valores esperados:

  $$
  E(X \pm Y) = E(X) \pm E(Y)
  $$

* O valor esperado de uma função $f(X)$ de uma variável aleatória $X$ é

  * Caso discreto:
  
    $$
    E(f(X)) = \sum_i f(x_i) \cdot P(X = x_i)
    $$
  
  * Caso contínuo:
  
    $$
    E(f(X)) = \int_{-\infty}^{+\infty} f(x) \cdot \text{fdp}(x) \text{d}x
    $$


## Variância

* A [variância]{.hl} de uma variável aleatória $X$ é [a média ponderada dos desvios quadrados]{.hl}, com as probabilidades como peso.

  * Caso [discreto]{.hl}:
  
    $$
    \sigma^2(X) = \sum_i (x_i - \mu)^2 \cdot P(X = x_i)
    $$
    
  * Caso [contínuo]{.hl}:
  
    $$
    \sigma^2(X) = \int_{-\infty}^{+\infty} (x - \mu)^2 \cdot \text{fdp}(x) \text{d}x
    $$

* Em qualquer caso,

  $$
  \begin{aligned}
    \sigma^2(X) &= E[(X - \mu)^2]\\
                &= E(X^2) - [E(X)]^2
  \end{aligned}
  $$
  
* Faça as contas, partindo de $E[(X - \mu)^2]$ e usando as propriedades do valor esperado para chegar a $E(X^2) - [E(X)]^2$. 


### Lançar dois dados

* A variância é

    
    ```r
    dados_distr %>% 
      summarize(s2 = sum((x - 7)^2 * num)) %>% 
      pull(s2)
    ```
    
    ```
    ## [1] 5,833333
    ```


### Lançar um dado

* A variância é

    
    ```r
    lado <- 1:6
    p <- 1/6
    sum((lado - 3.5)^2 * p)
    ```
    
    ```
    ## [1] 2,916667
    ```


### Altura de um homem adulto

* Estimando pela variância da amostra:

    
    ```r
    var(homens$altura)
    ```
    
    ```
    ## [1] 0,004917532
    ```

* Se $X$ é normalmente distribuída com média $\mu$ e desvio-padrão $\sigma$, i.e., $X \sim \mathcal{N}(\mu, \sigma)$, então $\sigma^2(X) = \sigma^2$. De acordo com o estudo, $\sigma^2 = 0.07^2 = 0{,}0049$.


## Propriedades da variância

* A variância de uma constante é zero:

  $$
  \sigma^2(c) = 0
  $$

* Somar uma constante à variável $X$ [não altera]{.hl} a variância:

  $$
  \sigma^2(X \pm c) = \sigma^2(X)
  $$

* Multiplicar a variável $X$ por uma constante multiplica a variância pelo [quadrado]{.hl} da constante:

  $$
  \sigma^2(c \cdot X) = c^2 \cdot \sigma^2(X)
  $$

* A variância da [soma ou diferença]{.hl} de duas variáveis aleatórias é a [soma]{.hl} das variâncias das variáveis:

  $$
  \sigma^2(X \pm Y) = \sigma^2(X) + \sigma^2(Y)
  $$

  ::: {.rmdimportant latex=1}
  
  Por que a [variância da diferença]{.hl} é a [soma das variâncias]{.hl}?
  
  Variância significa [incerteza]{.hl}. 
  
  Considere o seguinte exemplo para entender por que $\sigma^2(X - Y) = \sigma^2(X) + \sigma^2(Y)$:
  
  * Você compra uma caixa de $500$g de cereal no mercado. Como o peso não é exato, considere que $X$ é a variável aleatória que representa o peso do cereal na caixa, com $\mu_X = 500$g e uma variância qualquer $\sigma^2_X$ (que corresponde à [incerteza do processo de embalagem do cereal]{.hl} na fábrica).
  
  * Você decide comer $100\text{g}$ de cereal, despejando parte do conteúdo na caixa em uma tigela. Como sua capacidade de medir $100\text{g}$ não é exata, considere que $Y$ é a variável aleatória que representa o peso do cereal na tigela, com $\mu_Y = 100\text{g}$ e uma variância qualquer $\sigma^2_Y$ (que corresponde à [incerteza do seu processo de pesar]{.hl} $100\text{g}$).
  
  * Considere a variável aleatória $Z = X - Y$, que representa a quantidade de cereal que sobrou na caixa. 
  
    * Certamente a média $\mu_Z = \mu_X - \mu_Y = 400\text{g}$.
    
    * E a variância $\sigma^2_Z$? 
    
    * O fato de $Z$ ser o resultado da subtração de duas variáveis aleatórias diminui a incerteza? 
    
    * Ou a composição de incertezas aumenta a incerteza?
  
  :::


## Mais exemplos

### Seguradora

* Você tem uma seguradora, com $1.000$ segurados, cada um deles pagando $50$ dinheiros por ano.

* Por ano, $1$ dos $1.000$ segurados morre. Neste caso, sua seguradora deve pagar $10.000$ dinheiros.

* Por ano, $2$ dos $1.000$ segurados ficam inválidos. Neste caso, sua seguradora deve pagar $5.000$ dinheiros.

* [Quanto sua seguradora espera ter de lucro (ou prejuízo) por segurado, por ano?]{.hl}

  * [Chamando de $X$ a variável aleatória que representa o dinheiro pago pela seguradora por apólice, por ano]{.hl}, temos
  
    $$
    \begin{aligned}
    P(X = 10000) &= 1/1000\\
    P(X = 5000)  &= 2/1000\\
    P(X = 0)     &= 997/1000
    \end{aligned}
    $$
    
  * Daí, 
  
   $$
   \begin{aligned}
   E(X) &= 10000 \cdot \frac{1}{1000} \;+\; 5000 \cdot \frac{2}{1000} \;+\; 0 \cdot \frac{997}{1000} \\
        &= 20
   \end{aligned}
   $$

  * Como cada segurado paga $50$ dinheiros por ano, sua seguradora lucra, em média, $30$ dinheiros por apólice, por ano.
  
* E o desvio-padrão?

  * Calculando a variância antes:
  
    $$
     \begin{aligned}
     \sigma^2(X) &= (10000 - 20)^2 \cdot \frac{1}{1000} \;+\; (5000 -20)^2 \cdot \frac{2}{1000} \;+\; (0 - 20)^2 \cdot \frac{997}{1000} \\
          &= 9980^2 \cdot \frac{1}{1000} \;+\; 4980^2 \cdot \frac{2}{1000} \;+\; (- 20)^2 \cdot \frac{997}{1000} \\
          &= 149600
     \end{aligned}
    $$
    
  * O desvio-padrão é a raiz quadrada de $\sigma^2$:
  
    $$
    \sigma = 386{,}78
    $$

### Gerador de números aleatórios

* Você programa um gerador de números aleatórios $x \in [1, 3] \subset \mathbb{R}$.

* Considere $X$ a variável aleatória que representa os números gerados.

* $X$ é uma variável aleatória contínua, com fdp

  $$
  f(x) = 
    \begin{cases}\displaystyle
      \frac{1}{2} & \text{se } x \in [1, 3] \\
      \,0 & \text{se } x \not\in [1, 3]
    \end{cases}
  $$
  
  cujo gráfico é
  
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unif-1} \end{center}

* Isto significa que a densidade de probabilidade está distribuída uniformemente no intervalo $[1, 3]$.

* Vamos calcular o valor esperado $E(X)$:

  $$
  \begin{aligned}
  E(X) 
    &= \int_{-\infty}^{+ \infty} x \cdot f(x) \text{d}x \\
    &= \int_{1}^{3} x \cdot \frac{1}{2} \text{d}x \\
    &= \frac12 \cdot \left.\frac{x^2}{2} \right|_1^3 \\
    &= 2
  \end{aligned}
  $$
  
* Ou seja, a média dos números gerados, depois de muitas execuções, vai ser $2$.

* Vamos calcular a variância $\sigma^2(X)$:

$$
\begin{aligned}
\sigma^2(X) 
  &= \int_{-\infty}^{+ \infty} (x - 2)^2 \cdot f(x) \text{d}x \\
  &= \int_{1}^{3} (x-2)^2 \cdot \frac{1}{2} \text{d}x \\
  &= \frac13
\end{aligned}
$$

* Isto vai dar um desvio-padrão $\sigma = \sqrt{\sigma^2} = \frac{\sqrt{3}}{3} \approx 0{,}58$.

* Mas R tem este gerador! Vamos gerar muitos valores e calcular a média e o desvio-padrão:

    
    ```r
    valores <- runif(n = 1e6, min = 1, max = 3)
    mean(valores)
    ```
    
    ```
    ## [1] 1,999605
    ```
    
    ```r
    sd(valores)
    ```
    
    ```
    ## [1] 0,5771331
    ```

* Como exercício, verifique que, para qualquer variável aleatória contínua $X$ distribuída uniformemente entre $a$ e $b$, i.e., com fdp

  $$
  f(x) = 
    \begin{cases}\displaystyle
      \frac{1}{b - a} & \text{se } x \in [a, b] \\
      \,0 & \text{se } x \not\in [a, b]
    \end{cases}
  $$

  ocorre que
  
  * $E(X) = \frac{a+b}{2}$, e
  
  * $\sigma^2(X) = \frac{(a - b)^2}{12}$.
  

<!--chapter:end:variaveis.Rmd-->

---
knit: "bookdown::render_book"
---


# Referências {-}


<!--chapter:end:refs.Rmd-->

