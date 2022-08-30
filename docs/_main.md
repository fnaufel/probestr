--- 
# See https://github.com/fnaufel/bookdowntemplate01 for more information.

knit: "bookdown::render_book"

title: "Probabilidade e Estatística com R"
description: "Probabilidade e Estatística com R"
author: "Fernando Náufel"
date: "(versão de 30/08/2022)"
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

## Vídeo 2

```{=latex}
\begin{center} \url{https://youtu.be/3GEc1oiKDrU} \end{center}
```


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
  ## # ... with 69 more variables: wk8 <dbl>, wk9 <dbl>, wk10 <dbl>,
  ## #   wk11 <dbl>, wk12 <dbl>, wk13 <dbl>, wk14 <dbl>, wk15 <dbl>,
  ## #   wk16 <dbl>, wk17 <dbl>, wk18 <dbl>, wk19 <dbl>, wk20 <dbl>,
  ## #   wk21 <dbl>, wk22 <dbl>, wk23 <dbl>, wk24 <dbl>, wk25 <dbl>,
  ## #   wk26 <dbl>, wk27 <dbl>, wk28 <dbl>, wk29 <dbl>, wk30 <dbl>,
  ## #   wk31 <dbl>, wk32 <dbl>, wk33 <dbl>, wk34 <dbl>, wk35 <dbl>,
  ## #   wk36 <dbl>, wk37 <dbl>, wk38 <dbl>, wk39 <dbl>, wk40 <dbl>, ...
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
  ## # ... with 24.086 more rows
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
  ## # ... with 5.301 more rows
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
  ## # ... with 44 more rows
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
  ## # ... with 44 more rows
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
  ## # ... with 44 more rows
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
  ## # ... with 5.301 more rows
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
  ## # ... with 222 more rows
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
  ## # ... with 311 more rows
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
  ## # ... with 5.301 more rows
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
  ## # ... with 45 more rows
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
  ## # ... with 49 more rows
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
  ## # ... with 49 more rows
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
  ##   artista         musica                  entrou     semana   pos
  ##   <chr>           <chr>                   <date>      <int> <dbl>
  ## 1 Ginuwine        None Of Ur Friends B... 1999-12-11      7    48
  ## 2 Funkmaster Flex Do You                  2000-11-11      2    92
  ## 3 Levert, Gerald  Mr. Too Damn Good       2000-03-18      3    83
  ## 4 Vitamin C       The Itch                2000-12-02      8    95
  ## 5 Ying Yang Twins Whistle While You Tw... 2000-03-18      9    85
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
  ## # ... with 310 more rows
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
  ## 1 Your Everything        
  ## 2 You're A God           
  ## 3 You'll Always Be Lov...
  ## 4 You Won't Be Lonely ...
  ## 5 You Should've Told M...
  ## 6 You Sang To Me         
  ## # ... with 310 more rows
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
  ## # ... with 222 more rows
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
  ## # ... with 310 more rows
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
  ## # ... with 311 more rows
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
  ## # ... with 222 more rows
  ```

* Qual foi a melhor posição que cada música alcançou?

  
  ```r
  bb_tidy %>% 
    group_by(artista, musica) %>% 
    summarize(melhor = min(pos)) %>% 
    arrange(melhor)
  ```
  
  ```
  ## `summarise()` has grouped output by 'artista'. You can override using the
  ## `.groups` argument.
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
  ## # ... with 311 more rows
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
  ## # ... with 9 more rows
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
  ## # ... with 9 more rows
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
  ## # ... with 222 more rows
  ```


* Qual a posição média de cada música? Lembre-se de que eliminamos as linhas com `NA`; logo, [a média vai ser sobre a quantidade de semanas em que a música esteve na lista]{.hl}.

  
  ```r
  media1 <- bb_tidy %>% 
    group_by(artista, musica) %>% 
    summarize(media = mean(pos), .groups = 'drop') %>% 
    arrange(media)
  
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
  ## # ... with 311 more rows
  ```

* E se quisermos [a média sobre o número de semanas desde a entrada da música até a última semana]{.hl} em que a música apareceu na lista?

  
  ```r
  media2 <- bb_tidy %>% 
    group_by(artista, musica) %>% 
    summarize(media = sum(pos)/max(semana), .groups = 'drop') %>% 
    arrange(media)
  
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
  ## # ... with 311 more rows
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
   ## # ... with 709 more rows
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
   ## # ... with 11 more rows
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
   ## # ... with 30 more rows
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
   ## # ... with 19 more rows
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
   ## # ... with 10 variables: nome <chr>, sexo <chr>, olhos <chr>,
   ## #   raça <chr>, cabelos <chr>, altura <dbl>, editora <chr>,
   ## #   pele <chr>, lado <chr>, peso <dbl>
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
   ## # ... with 23 more rows
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
   ## # ... with 10 variables: nome <chr>, sexo <chr>, olhos <chr>,
   ## #   raça <chr>, cabelos <chr>, altura <dbl>, editora <chr>,
   ## #   pele <chr>, lado <chr>, peso <dbl>
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
   ## # ... with 5 more rows
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
   ## # ... with 3 more rows
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
   ## # ... with 5 more rows
   ```
   
   ou
   
   
   ```r
   herois_info %>% 
     group_by(editora, lado) %>% 
     summarize(n())
   ```
   
   ```
   ## `summarise()` has grouped output by 'editora'. You can override using the
   ## `.groups` argument.
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
   ## # ... with 5 more rows
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
   ## # ... with 56 more rows
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
   ## # ... with 56 more rows
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
     ## # ... with 41 more rows
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
     ## # ... with 11 more rows
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
     ## # ... with 11 more rows
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
     ## # ... with 7 more rows
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
     ## # ... with 11 more rows
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
     ## # ... with 11 more rows
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
     ## # ... with 7 more rows
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
     ## # ... with 41 more rows
     ```
   
   
     \end{comment}


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
  ## # ... with 77 more rows, and 4 more variables: sleep_cycle <dbl>,
  ## #   awake <dbl>, brainwt <dbl>, bodywt <dbl>
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
  ## # ... with 4 more variables: sleep_cycle <dbl>, awake <dbl>,
  ## #   brainwt <dbl>, bodywt <dbl>
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
  ## # ... with 1 more row
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
  ## # ... with 29 more rows
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
  ## Warning: Removed 7 rows containing missing values (geom_point).
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
  ## Warning: Removed 27 rows containing missing values (geom_point).
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
  ## Warning: Removed 18 rows containing missing values (geom_point).
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
  ## Warning: Removed 18 rows containing missing values (geom_point).
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
  ## Warning: Removed 18 rows containing missing values (geom_point).
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
  ## Warning: Removed 18 rows containing missing values (geom_point).
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-121-1} \end{center}

* Observe como usamos o gráfico já salvo na variável `grafico` e simplesmente acrescentamos a nova escala. Este tipo de "montagem" de gráficos `ggplot2` é bem conveniente, para evitar repetição de código.

* Um último ajuste na aparência: os pontos na legenda "Dieta" estão pequenos demais. Quase não identificamos as cores deles. 

  Vamos usar a função `guides` para modificar (*override*) a estética `color` --- [apenas na legenda, não nos pontos mostrados no gráfico, cujos tamanhos representam o número de horas de sono]{.hl} --- tornando o tamanho maior. [Leia mais sobre `override.aes` neste *link* (em inglês)](https://ggplot2-book.org/scale-colour.html#guide_legend).
  
  
  ```r
  grafico3 <- grafico2 +
    guides(color = guide_legend(override.aes = list(size = 10)))
    
  grafico3
  ```
  
  ```
  ## Warning: Removed 18 rows containing missing values (geom_point).
  ```
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-122-1} \end{center}

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
    ## `geom_smooth()` using formula 'y ~ x'
    ```
    
    ```
    ## Warning: Removed 18 rows containing non-finite values (stat_smooth).
    ```
    
    ```
    ## Warning: Removed 18 rows containing missing values (geom_point).
    ```
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-123-1} \end{center}
  
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
  ## # ... with 4 more rows
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

  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-126-1} \end{center}

* Para este material, escolhi o tema `theme_linedraw`, que usa linhas pretas sobre fundo branco:

  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-127-1} \end{center}

* Para deixar os gráficos mais leves e facilitar a leitura, fiz as seguintes alterações no tema:

  * Mudei o tamanho do texto dos rótulos.
  
  * Fiz o rótulo do eixo $y$ aparecer na horizontal; embora isto ocupe um pouco mais de espaço, evita que o leitor tenha que girar a cabeça para ler o rótulo.
  
  * Eliminei as linhas dos eixos, para o gráfico ficar mais leve.
  
  * Eliminei a moldura da área de dados, para o gráfico ficar mais leve.
  
  * Eliminei a grade secundária, para o gráfico ficar mais leve.
  
* O resultado é
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-128-1} \end{center}

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
  ## # ... with 77 more rows
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
  ## # ... with 14 more rows
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
  ## # ... with 4 variables: name <chr>, vore <chr>, order <chr>,
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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-162-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-163-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-164-1} \end{center}

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
  ## # ... with 586 more rows
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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-170-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-171-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-172-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-173-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-174-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-175-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-176-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-177-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-178-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-179-1} \end{center}


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
  ## # ... with 26 more rows
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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-181-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-182-1} \end{center}


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
  ## # ... with 1 more row
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
  ## # ... with 43 more rows
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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-186-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-187-1} \end{center}

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
  
  
  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-188-1} \end{center}

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


# Medidas

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

    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-193-1} \end{center}

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
    ##    [1] -1.46619355 -1.32739195 -0.58986079 -0.20482358 -0.18495353
    ##    [6] -0.05840035  0.11289132  0.14858550  0.17874743  0.24242600
    ##   [11]  0.44110718  0.47210898  0.64419963  0.76153197  0.83186417
    ##   [16]  0.84184540  0.88111055  0.88414099  0.89806386  1.03555566
    ##   [21]  1.06029221  1.10336815  1.15107315  1.15828824  1.16096614
    ##   [26]  1.17133438  1.17841228  1.29530269  1.31320549  1.32036049
    ##   [31]  1.32580605  1.34461503  1.36510004  1.38765892  1.39055539
    ##   [36]  1.42869540  1.51543351  1.54131216  1.55675319  1.57146876
    ##   [41]  1.59486846  1.60712697  1.61837100  1.62931136  1.65896774
    ##   [46]  1.66190781  1.66677077  1.68917978  1.70723719  1.72056601
    ##   [51]  1.77713959  1.80120396  1.81167736  1.81907547  1.88770812
    ##   [56]  1.89263534  1.90124025  1.90549430  1.92174506  1.93441649
    ##   [61]  1.94615418  1.94621897  1.96099694  2.05069909  2.06237944
    ##   [66]  2.06810616  2.09247274  2.09314429  2.10041020  2.13359417
    ##   [71]  2.14996823  2.16246544  2.18775455  2.19906190  2.22285985
    ##   [76]  2.26013561  2.26095372  2.27332623  2.29270633  2.29283695
    ##   [81]  2.29295023  2.29990635  2.34617356  2.37636458  2.37919964
    ##   [86]  2.39621734  2.41504531  2.42191594  2.43333368  2.44173410
    ##   [91]  2.44271525  2.44312776  2.44446082  2.44651398  2.44768838
    ##   [96]  2.52275313  2.52916915  2.53608120  2.55482718  2.58846896
    ##  [101]  2.59848614  2.62946461  2.66435062  2.68352337  2.68813768
    ##  [106]  2.72586363  2.75744731  2.76587923  2.77794580  2.81976832
    ##  [111]  2.83987199  2.85314828  2.86845521  2.87426457  2.87673927
    ##  [116]  2.88636345  2.90062684  2.91720227  2.91736380  2.91806369
    ##  [121]  2.92500431  2.92620484  2.92777947  2.93030782  2.94769620
    ##  [126]  2.97042122  2.97642157  3.01560393  3.02933127  3.03581557
    ##  [131]  3.04211906  3.04364903  3.05958446  3.06297747  3.06409606
    ##  [136]  3.07453703  3.07777227  3.08762295  3.10578293  3.11026281
    ##  [141]  3.13516272  3.14104055  3.14460931  3.17314643  3.18693871
    ##  [146]  3.20145719  3.20189254  3.20699811  3.20867604  3.21334933
    ##  [151]  3.21497013  3.21928615  3.21936197  3.22390302  3.23698600
    ##  [156]  3.23866560  3.25062479  3.25722285  3.25876347  3.26196416
    ##  [161]  3.26862619  3.26931045  3.26937960  3.27672986  3.28195684
    ##  [166]  3.28412258  3.29136870  3.31265366  3.33898513  3.35538662
    ##  [171]  3.35555089  3.35593864  3.36529827  3.36925782  3.37765563
    ##  [176]  3.37944126  3.38333391  3.38632376  3.39543643  3.40091528
    ##  [181]  3.40225930  3.41015885  3.41488977  3.41849433  3.42642593
    ##  [186]  3.43124837  3.43487323  3.43865516  3.44341838  3.44553428
    ##  [191]  3.44645015  3.46161940  3.46644533  3.47630880  3.47901818
    ##  [196]  3.48880242  3.49685429  3.50397334  3.50668276  3.50711457
    ##  [201]  3.50800199  3.51790458  3.51974705  3.52528696  3.53075676
    ##  [206]  3.53707277  3.54723740  3.55412947  3.56368092  3.56660298
    ##  [211]  3.57612460  3.57654949  3.58188224  3.58204689  3.59241197
    ##  [216]  3.60344549  3.60854405  3.61048126  3.62076449  3.62474433
    ##  [221]  3.63248631  3.64262671  3.65841877  3.66473814  3.66784451
    ##  [226]  3.67100177  3.67175506  3.67719315  3.69147093  3.69251768
    ##  [231]  3.70694648  3.71524852  3.71749082  3.71989614  3.72175179
    ##  [236]  3.72280819  3.72591796  3.73232984  3.73700554  3.74233066
    ##  [241]  3.75476051  3.75730887  3.75742333  3.76111911  3.76474259
    ##  [246]  3.76623472  3.76983815  3.78495326  3.78963844  3.79072505
    ##  [251]  3.79462485  3.79469719  3.79663161  3.80546054  3.82046082
    ##  [256]  3.82103119  3.82459962  3.82950085  3.82989933  3.83271315
    ##  [261]  3.83367622  3.83418604  3.83830127  3.86413483  3.87642562
    ##  [266]  3.87748950  3.87935829  3.88201729  3.88595330  3.88878120
    ##  [271]  3.89274053  3.89549134  3.90015809  3.91974044  3.92042647
    ##  [276]  3.93892486  3.94062216  3.94777083  3.95093562  3.95424561
    ##  [281]  3.95462835  3.97112837  3.97461826  3.97569815  3.98064258
    ##  [286]  3.98290076  3.98306410  3.99934764  4.00813639  4.01751094
    ##  [291]  4.03777913  4.03782569  4.04086318  4.04803119  4.05727354
    ##  [296]  4.05744302  4.07464370  4.07825456  4.07896788  4.08327461
    ##  [301]  4.09232709  4.09886586  4.10175241  4.10989004  4.11171858
    ##  [306]  4.12598624  4.12633276  4.13460176  4.13585592  4.14080400
    ##  [311]  4.14181825  4.14234603  4.14810512  4.15134008  4.15228020
    ##  [316]  4.15905565  4.19191771  4.21070143  4.22028808  4.22208243
    ##  [321]  4.22335645  4.22680033  4.23072261  4.23218718  4.23363036
    ##  [326]  4.25508296  4.25639628  4.25994466  4.26321750  4.27749821
    ##  [331]  4.28760754  4.28872814  4.29343548  4.31033704  4.31547755
    ##  [336]  4.31972301  4.32457511  4.32519801  4.34992452  4.35295973
    ##  [341]  4.36327210  4.36782997  4.36938743  4.37246906  4.38266112
    ##  [346]  4.38940140  4.39834428  4.39925324  4.40492351  4.40810115
    ##  [351]  4.41753402  4.42349459  4.42506487  4.42938818  4.43711885
    ##  [356]  4.44090779  4.44936604  4.45171912  4.45226523  4.45412372
    ##  [361]  4.45892033  4.45990934  4.46228459  4.46493105  4.46955051
    ##  [366]  4.47838496  4.48618274  4.48651573  4.49173170  4.49295010
    ##  [371]  4.49616661  4.50082009  4.50178212  4.50514277  4.50515245
    ##  [376]  4.51054607  4.51098826  4.52181545  4.52606036  4.53140300
    ##  [381]  4.53238928  4.54762401  4.55782736  4.55784279  4.56274216
    ##  [386]  4.56470421  4.56562502  4.57496589  4.57813676  4.58028581
    ##  [391]  4.58425260  4.58459758  4.58545079  4.59426895  4.60538936
    ##  [396]  4.61234106  4.61627093  4.62122584  4.62129560  4.62696745
    ##  [401]  4.63147606  4.63582693  4.63726816  4.64262449  4.66380771
    ##  [406]  4.66506075  4.67206907  4.67322595  4.68104783  4.68485577
    ##  [411]  4.68594176  4.68709934  4.68999852  4.69502987  4.69787202
    ##  [416]  4.71042568  4.71444896  4.71529124  4.72496359  4.73680943
    ##  [421]  4.75123226  4.75807809  4.76083705  4.76245670  4.76622134
    ##  [426]  4.76955120  4.80110998  4.80633051  4.80761009  4.81412693
    ##  [431]  4.81588241  4.81627855  4.82470334  4.82494514  4.83223772
    ##  [436]  4.83285140  4.83461420  4.84927126  4.84950565  4.85030011
    ##  [441]  4.85293772  4.85634380  4.85874191  4.86926121  4.87130629
    ##  [446]  4.87636684  4.88539707  4.88954707  4.89611841  4.89802513
    ##  [451]  4.90596841  4.91007439  4.91307661  4.92013205  4.92031938
    ##  [456]  4.92188602  4.92687345  4.93562376  4.94816622  4.94819954
    ##  [461]  4.95071775  4.95284876  4.95993094  4.96064357  4.96268299
    ##  [466]  4.96601729  4.96610226  4.97939194  4.97975596  4.98273638
    ##  [471]  4.98723904  4.99553351  5.01070748  5.01613930  5.01666201
    ##  [476]  5.01804093  5.02194452  5.02627763  5.03058958  5.03187295
    ##  [481]  5.03546585  5.04035354  5.04056453  5.04161548  5.04566342
    ##  [486]  5.04842779  5.06124871  5.06289798  5.06384242  5.06957044
    ##  [491]  5.07167939  5.07804664  5.08019419  5.10674702  5.11337903
    ##  [496]  5.11792825  5.11812112  5.13400872  5.13570953  5.13646376
    ##  [501]  5.13750903  5.13884763  5.14131329  5.14141356  5.15309101
    ##  [506]  5.16162288  5.16209963  5.16566345  5.16649555  5.16787493
    ##  [511]  5.16789598  5.17372718  5.17666013  5.18495173  5.18721748
    ##  [516]  5.21083219  5.21174238  5.21597614  5.22960467  5.23266991
    ##  [521]  5.23488354  5.25065901  5.25160913  5.25783851  5.26648588
    ##  [526]  5.26761103  5.27108749  5.27365418  5.28215198  5.29580992
    ##  [531]  5.29999091  5.30303555  5.30867443  5.31112426  5.31879607
    ##  [536]  5.32286181  5.33002704  5.34131443  5.34282427  5.34459531
    ##  [541]  5.35031649  5.35180327  5.35934987  5.36700516  5.36716110
    ##  [546]  5.36799794  5.37105890  5.37685944  5.37732305  5.37962411
    ##  [551]  5.39089169  5.39517293  5.39842612  5.39955807  5.40334655
    ##  [556]  5.40459224  5.40488812  5.41030114  5.41126526  5.41207903
    ##  [561]  5.41581468  5.42060392  5.42816070  5.43408262  5.43897701
    ##  [566]  5.44970994  5.45041820  5.45209629  5.45500474  5.45620153
    ##  [571]  5.45730227  5.45886339  5.46055889  5.46198774  5.46216815
    ##  [576]  5.46272112  5.46560591  5.47656789  5.47697277  5.48183484
    ##  [581]  5.48529032  5.51322748  5.51337338  5.51487146  5.51843174
    ##  [586]  5.51867535  5.52309271  5.52581108  5.53073787  5.53341154
    ##  [591]  5.53979701  5.54520370  5.54534076  5.56075538  5.56636565
    ##  [596]  5.57511091  5.58050888  5.58403994  5.58809022  5.59028615
    ##  [601]  5.59581917  5.59996707  5.60202121  5.60348746  5.60588868
    ##  [606]  5.60985795  5.61502514  5.62121268  5.62218773  5.63889140
    ##  [611]  5.64611118  5.65456761  5.65901777  5.65919988  5.66386763
    ##  [616]  5.66671817  5.68130654  5.68830354  5.68888188  5.68925065
    ##  [621]  5.69214882  5.70354054  5.70630615  5.70772141  5.71110335
    ##  [626]  5.71126132  5.72537484  5.72730459  5.73128017  5.73381945
    ##  [631]  5.74523414  5.75927470  5.77277695  5.77316779  5.77649764
    ##  [636]  5.77936803  5.78448194  5.78488284  5.78717413  5.79339344
    ##  [641]  5.79357720  5.79532364  5.79701624  5.80193557  5.82602972
    ##  [646]  5.82885698  5.82909145  5.83361078  5.83715605  5.84193673
    ##  [651]  5.84337257  5.84741188  5.84930699  5.87109456  5.87266744
    ##  [656]  5.87621987  5.88847873  5.89697769  5.90383994  5.90828601
    ##  [661]  5.90912932  5.91267804  5.91550963  5.91644521  5.91694381
    ##  [666]  5.91988104  5.92467395  5.92678479  5.92767389  5.93035392
    ##  [671]  5.93204149  5.93227271  5.93262115  5.93470345  5.93995263
    ##  [676]  5.94707866  5.94764980  5.95114386  5.95383813  5.95590923
    ##  [681]  5.97495684  5.97564486  5.98052027  5.99342236  5.99510484
    ##  [686]  5.99770849  6.00584871  6.00954021  6.02412899  6.02842344
    ##  [691]  6.02913642  6.02933357  6.03416218  6.03804932  6.04138238
    ##  [696]  6.04954303  6.05160827  6.05179909  6.05344430  6.06170758
    ##  [701]  6.06810023  6.06923103  6.07162618  6.07240458  6.07908012
    ##  [706]  6.08982701  6.11342246  6.11527111  6.12468839  6.13955994
    ##  [711]  6.14189463  6.14560871  6.15463518  6.16916225  6.17238137
    ##  [716]  6.17849535  6.18298826  6.19195099  6.20468578  6.20552468
    ##  [721]  6.20588354  6.21180434  6.21216054  6.21492199  6.22126075
    ##  [726]  6.22171864  6.24038339  6.24754223  6.25503132  6.25679517
    ##  [731]  6.26536097  6.26567639  6.26662014  6.27022061  6.27429864
    ##  [736]  6.27853455  6.27929076  6.28342255  6.29521486  6.30906453
    ##  [741]  6.31220193  6.31240086  6.32168384  6.33378284  6.33516831
    ##  [746]  6.34310456  6.34717002  6.34846188  6.35426903  6.35523162
    ##  [751]  6.36177297  6.37056556  6.37529435  6.37901256  6.38245332
    ##  [756]  6.38723362  6.39151277  6.39473709  6.39681455  6.40075557
    ##  [761]  6.40336756  6.40790337  6.41700218  6.42126854  6.42498220
    ##  [766]  6.42870997  6.44057410  6.45173728  6.46049663  6.46387493
    ##  [771]  6.47344978  6.49509216  6.49586688  6.49679666  6.49868212
    ##  [776]  6.49989128  6.50043334  6.50112898  6.50367027  6.51747230
    ##  [781]  6.51774432  6.53182870  6.54681408  6.54938351  6.55256104
    ##  [786]  6.55872242  6.55876564  6.56746198  6.57866940  6.58856094
    ##  [791]  6.61196339  6.62310921  6.63416792  6.63582267  6.64971655
    ##  [796]  6.65343292  6.65456495  6.66154522  6.66635287  6.67227564
    ##  [801]  6.68527486  6.70594452  6.71976913  6.72775908  6.74844350
    ##  [806]  6.74986167  6.75607257  6.75618890  6.79703100  6.80230485
    ##  [811]  6.80521180  6.80634229  6.81413413  6.81752665  6.82033301
    ##  [816]  6.82204895  6.82305376  6.82536206  6.83875597  6.83902453
    ##  [821]  6.84877902  6.85486683  6.86688170  6.88647003  6.88728655
    ##  [826]  6.89902094  6.90716422  6.91780555  6.92353433  6.92428189
    ##  [831]  6.93692130  6.94790773  6.94882930  6.95686338  6.96204275
    ##  [836]  6.96655683  6.97174459  6.97562045  6.97839555  6.98518437
    ##  [841]  7.00216984  7.00800989  7.01213539  7.01461442  7.03679792
    ##  [846]  7.04123515  7.05747381  7.06918406  7.09026041  7.09141267
    ##  [851]  7.10465727  7.10537923  7.11431943  7.11756217  7.11926076
    ##  [856]  7.12993409  7.16525500  7.17111035  7.17967956  7.18323541
    ##  [861]  7.18485058  7.22865693  7.22886374  7.23377292  7.23565498
    ##  [866]  7.23573283  7.23665498  7.25192339  7.27405952  7.27795301
    ##  [871]  7.28181245  7.28871997  7.30412253  7.31306972  7.31533196
    ##  [876]  7.32138265  7.34006134  7.35838849  7.37834336  7.39894411
    ##  [881]  7.40510711  7.43155015  7.47386520  7.48163649  7.49349398
    ##  [886]  7.49721868  7.50947345  7.51305451  7.51391150  7.52806282
    ##  [891]  7.53316294  7.53526572  7.54231389  7.55159486  7.55703390
    ##  [896]  7.56850265  7.57996967  7.58487085  7.58708706  7.60547726
    ##  [901]  7.61682769  7.61876728  7.62420931  7.62443584  7.64324804
    ##  [906]  7.64592879  7.64783022  7.66317599  7.66804004  7.68339972
    ##  [911]  7.71030875  7.71846900  7.72135412  7.73218516  7.74626792
    ##  [916]  7.77504669  7.81884955  7.82497900  7.83326724  7.83745476
    ##  [921]  7.84821940  7.86876622  7.90774592  7.93263129  7.94098313
    ##  [926]  7.94491312  7.94927321  7.96126623  7.97752216  7.99080375
    ##  [931]  8.00466737  8.01263267  8.01392145  8.04131347  8.04624882
    ##  [936]  8.05700360  8.07298921  8.07326823  8.10120447  8.15529541
    ##  [941]  8.15544540  8.16585112  8.17388781  8.19202596  8.19446000
    ##  [946]  8.20806796  8.22816355  8.23102422  8.25986800  8.29312073
    ##  [951]  8.29605758  8.31305088  8.31493160  8.37498670  8.38309853
    ##  [956]  8.48823409  8.49564020  8.55335086  8.56280204  8.56830955
    ##  [961]  8.56947346  8.57155081  8.60623052  8.63666090  8.64723961
    ##  [966]  8.64758610  8.66094991  8.66225757  8.67697059  8.79293817
    ##  [971]  8.81213509  8.82042399  8.85881505  8.88690912  8.95845652
    ##  [976]  9.04134540  9.13905045  9.16340073  9.17234049  9.18883786
    ##  [981]  9.25260590  9.28642982  9.29428558  9.31359550  9.32554056
    ##  [986]  9.46029153  9.47277758  9.58294234  9.59103617  9.66427928
    ##  [991]  9.74326934  9.76282910  9.82472312 10.05597514 10.20014809
    ##  [996] 10.20934333 10.24207527 10.55461977 10.69985454 10.94221956
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
    ## [1] 4,801581
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

    

    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-195-1} \end{center}

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
    ## [1] 5,103691
    ```
    
    ```r
    median(normal)
    ```
    
    ```
    ## [1] 5,136986
    ```
    
    ```r
    mlv(normal, method = 'venter')
    ```
    
    ```
    ## [1] 4,801581
    ```

  * Para a distribuição uniforme do exemplo:

    
    ```r
    mean(uniforme)
    ```
    
    ```
    ## [1] 4,939979
    ```
    
    ```r
    median(uniforme)
    ```
    
    ```
    ## [1] 4,735605
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
    ## Warning: Removed 3 rows containing non-finite values (stat_bin).
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
  ## # ... with 6 more rows
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
  ## # ... with 6 more rows
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
  ## # ... with 6 more rows
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
  ## # ... with 6 more rows
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

  
  \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-210-1} \end{center}

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


  ::: {.rmdcaution}
  
  Um [erro comum]{.hl} é achar que, se houve poucas caras nos lançamentos mais recentes, então a probabilidade de o resultado ser cara no próximo lançamento é maior, para que a proporção de caras fique mais perto de $0{,}5$.
  
  A lei dos grandes números fala sobre os resultados do experimento quando $n$ tende ao infinito, [não no futuro próximo]{.hl}.
  
  Em lançamentos [independentes]{.hl} de uma moeda [não-viciada]{.hl}, a probabilidade de cara [sempre]{.hl} é $0{,}5$.
  
  :::


## Probabilidade subjetiva

* Outra interpretação de probabilidades se baseia na [crença]{.hl} --- a estimativa de um agente sobre a ocorrência de um evento.

* Uma maneira de quantificar a crença é através de [apostas justas]{.hl}.

* Por exemplo, você aposta com um amigo que

  * Se o seu time de basquete^[Considere que, no basquete, o empate é impossível.] vencer o próximo jogo contra o dele, você pagará $\$3$ para ele.
  
  * Se o time dele vencer o próximo jogo contra o seu, ele pagará $\$1$ para você. 
  
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
    ## [1] 0,5701
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
          '(teóricas com premissas originais: azul;', 
          'simulações com novas premissas: vermelho)'
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
    
    
    
    \begin{center}\includegraphics[width=1\linewidth]{_main_files/figure-latex/unnamed-chunk-219-1} \end{center}

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
       
       mean(!map_lgl(maos, tem_as))
       ```
       
       ```
       ## [1] 0,48855
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
       ## [1] 0,000115
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
       ## [1] 0,020506
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
       ## [1] 0,000084
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

  ::: {.rmdimportant}
  
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


# Referências {-}


<!--chapter:end:refs.Rmd-->

