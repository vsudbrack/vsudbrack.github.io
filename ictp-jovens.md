---
layout: post
title: ICTP-SAIFR Jovens na Física - Projeto Fragmentação de florestas
permalink: /ictp-jovens/
---


Olás, sejam muito bem-vindos e bem-vindas ao nosso projeto/oficina sobre **fragmentação de florestas**! Quero agradecer de coração vocês terem topado o desafio que vai ser essa semana - se preprem para bastante **conhecimento** e venham com o **ânimo** nas alturas e a mente aberta para **curiosidade**.

Primeiro gostaria de dizer que eu tô muito contente em ter essa experiência com vocês, e que eu espero que vocês gostem e aprendam bastante ao longo dessa semana. Nesse projeto eu procurei balancear entre os pilares que eu vejo trabalhando com física:
* **Conhecimento:** O quanto a gente vai aprender fazendo isso juntos. Espero oferecer para vocês, através desse tema, duas ferramentas **fundamentais** nas ciências: **progoramação** e **estatística**. Ninguém faz física hoje em dia com papel e caneta... as contas são complicadas demais, as equações não tem solução analítica, então a gente usa o computador para resolver para gente. E estatística é importantíssima porque hoje em dia a gente tem uma quantidade de informação enoooooorme, e precisamos de uma ferramenta para *resumir* os dados em informações palatáveis. 
* **Utilidade:** O quanto o nosso trabalho vai ser útil para outros cientistas que pesquisam sobre fragmentação de florestas e, portanto, podem se beneficiar do nosso trabalho. Nossa proposta de um trabalho **original** é que vocês possam ter a chance de ter uma publicação, que é super bem vista no currículo de vocês para concorrer a bolsas de estudo, bolsas de pesquisa, etc.
* **Relevância:** Procurei esse tema porque tem uma grande relação e uma grande contextualização com um assunto super importante e valorizado atualmente que são as **mudanças antropocêntricas**, e especialmente que tem uma **visualização impactante** tanto em fotos reais das floresta fragmentadas, quanto das florestas que a gente vai criar. Isso ajuda na produção de uma apresentação e um reltório final legal por parte do grupo - usem isso a favor de vocês.
* **Diversão:** Acima de tudo, a gente tem que se divertir! Trabalhar no física é uma eterna diversão, tem pontos altos e baixos, como qualquer profissão, ma em geral é muito divertido. E nesse ponto é a gente que faz a diversão, né? Então venham animados, mesmo que as coisas não saiam como o esperado (o que é super normal *heheh*)

{% include image.html url="https://pt.wikipedia.org/wiki/Antropoceno" image="/projects/ictp-jovens/welcome_do_anthropocene_era.jpeg" text="Bem-vind@s à fabulosa Era do Antropoceno" %}

Então essa semana vocês vão ter um gostinho sobre **como um físico e uma física trabalham**. Para ajudar vocês nessa empreitada (em geral o caminho é mais pedroso *risos nervosos*), eu criei essa página que vai funcionar como uma "wiki" ou um diário do projeto... vou tentar **escrever e roterizar aqui tudo que vocês precisam saber e fazer**, e ao longo da semana nós **discutiremos o conteúdo e a prática juntos nas lives**. 

Quero que vocês se sintam muito a vontade dentro do nosso grupo, e, principalmente, sempre que vocês quiserem perguntar algo, solicitar algo, comentar algo,..., **eu estou sempre a postos para ouví-los, não hesitem**! Os melhores jeitos são via email **[vitorsudbrack@gmail.com](mailto:vitorsudbrack@gmail.com)** ou **Whatsapp +34 (641) 17 81 88** (meio estranho porque o número é da Espanha hehe).


---

# Preâmbulo

Vou escrever aqui algumas coisas que acredito que podem ser feitas **antes** do nosso primeiro encontro... algumas tarefas e leituras para gente se conhecer, vocês conhecerem o tópico e deixarem tudo pronto para a gente colocar a mão na massa!

## Me mandar um email de apresentação

Primeira tarefa de vocês é uma **escrevem um email de apresentação**! Para mim é muito importante entender mais quem vocês são para eu posso organizar nossas tarefas e nosso grupo de forma que seja mais legal para vocês :)

Além das coisas básicas, como onde mora e estuda, quais os seus interesses em física, em ecologia, em matemática, em informática, pontos que se considera forte e que pode melhorar, experiências de trabalhar em grupo,..., lembrem também de mencionar:
* porque você escolheu essa ofina e qual sua expectativa no trabalho;
* seu nível de leitura em inglês (muito material tá em inglês, vamos organizar para todos tenham acesso e entendam);
* sistema operacional do computador de vocês;
* o quanto vocês conhecem de computador e se você já programou alguma vez na vida ou fez algo de robótica;
* se já teve aulas de estatística nas disciplinas de matemática;
* o email que vocês usam no **GoogleDrive** - teremos uma pasta compartilhada!

Prepara um par de parágrafos com as informações que achar mais importantes de destacar e manda pro meu email, **[vitorsudbrack@gmail.com](mailto:vitorsudbrack@gmail.com)**.

O inverso também é importante, e **aqui no site vocês descobrem bastante sobre mim e sobre as coisas que eu trabalho e me interesso** - explorem-o. No nosso primeiro encontro a gente faz uma roda de apresentação também.

## Instalar o Rstudio e se familiarizar com o R

Você sabe o que é uma linguagem de programação? O porque é importante saber progrmar? Se você nunca teve contato com esse universo (e é um caminho sem volta, já digo haha), uma discussão interessante sobre o que é uma linguagem de programação, porque é legal a gente saber programar, quais as vantagens de usar o R e o RStudio que usaremos ao longa da semana, está nesse vídeo:
{% include video.html src="https://www.youtube.com/embed/tfPsmDzS74c" %}
Minha prosposta em ensinar programação para vocês é ser apenas um começo. Quando vocês souberam encaixar mais funções e algoritmos, o que vocês poderão fazer é limitado apenas pela imaginação. Existem várias técnica muito famosas hoje em dia, uma que ele menciona no vídeo é o *Machine Learning*, que significa ensinar o computador a excutar uma tarefa ou tomar uma decisão, por exemplo. A genete vi passar longe disso, vamos ficar no básico da programação, mas vamos tentar solidificar os conhecimentos para que o caminho até técnicas mais sofisticadas (que estão em todas as ciências) seja o mais brando possível. (Aliás, esse site aqui é feito em R também :) )

Antes de mais nada a gente tem que instalar tanto a **linguagem de programação R** que vamos usar, quanto **RStudio** que é uma interfácie gráfica para facilitar o uso da linguagem. Isso não tem mistério, é só seguir todos os passos que estõ bem desmiuçados nesse vídeo:
{% include video.html src="https://www.youtube.com/embed/PWMqxKWHlz4" %}

Agora vamos nos familiarizar com o R e o RStudio. Assistam esse vídeo aqui de baixo (a partir de 3min20s - antes disse ele mostra o download que vocês já fizeram no outro vídeo mais detalhado...) e **reproduzam** as coisas que ele vai mostrando... então é realmente abrir o RStudio do lado e digitar o que ele mostra, conferir o que o programa retorna, explorar coisas parecidas, etc...
{% include video.html src="https://www.youtube.com/embed/4j_rtffftzQ?start=200" %}

Ele também vai guiar vocês por todo o RStudio, as várias janelas e as várias abas. A gente vai trabalhar com a forma de arquivos (RScript que ele mostra em 5min28s), pois assim a gente vai salvando nosso processo (é como se fosse um caderno) e rodando as linhas com *CTRL+Enter*.

Pontos fundamentais desse vídeo: 
* operações matemáticas (+,-,*,/,^(potência),<(maior),==(igual),...)
* atribuir valores à variáveis
* função print
* função paste
* criar uma lista com as funções c(...) e seq()
* chamar funções sobre essa lista (mean, sum, max...)¹
* plotar gráficos com plot()
* gerar números aleatórios com runif()

¹ Não se preocupem com o significado do valor que elas retornam a gente vai ver mais para frente juntos...

Agora vamos para um outro vídeo, onde partirmos de 6min. Nesse segundo, ele não usa o RStudio, ele usa outra ferramenta. Porém vocês sabem usar o RStudio do vídeo anterior :blink: Basta digitar no RScript de vocês a linha de comando e apertar *CTRL+Enter* para rodar no terminal...

{% include video.html src="https://www.youtube.com/embed/pdRoIDQJ_x4?start=369" %}

Pontos desse vídeo: 
* atribuir uma "string" (um nome!)
* criar um data.frame
* acessar as colunas ($) e linhas ([...]) de um data.frame
* testar uma condição com if(condição){execute}²
* fazer um loop com for(i in lista){execute}²

² Esses pontos ele passa voando no vídeo... fiquem tranquilos que a gente pode minuciar esses detalhes juntos.

## Instalar pacotes no R

Pacotes são conjuntos de funções que pesquisadores desenvolveram e disponibilizaram para outros pesquisadores e cientistas usarem. O lema da programação é "dividir para conquistar", isso significa que a gente pode quebrar problemas grande em problemas menores, e juntar a solução dos menores... então uma pessoa fez um pacote de funções para criar paisagens, outras para manipular e outra para calcular métricas de frgmentação - agora vocês vão juntar tudo isso para conquistar! 

Agora a gente vai instalar os pacotes que usaremos para gerar nossas paisagens artificais, manipular nossas paisagens e calcular nossas métricas de fragmentação. Execute cada uma dessas linhas no terminal do RStudio de vocês (normal demorar um pouquinho para instalar tudo):

```
install.packages('NLMR', dependencies = TRUE)
install.packages('landscapetools', dependencies = TRUE)
install.packages('landscapemetrics', dependencies = TRUE)
install.packages('raster', dependencies = T)
install.packages('rgdal', dependencies = T)
```

Nós colocamos esse argumento da função chamado 'dependencies' como verdadeiro, pois assim ele instala todos os pacotes que esses pacotes precisam para executar juntos (sim, pacotes usam pacotes... dividir para conquistar!). 

Cada pacote tem sua **documentação**. A documentação de um pacote é onda você encontra toda a informação sobre as funções que o pacote tem, e o que elas fazem. Vou deixar aqui as documentações desses pacotes que usaremos para vocês consultarem ao longo da semana.

<a href="https://github.com/ropensci/NLMR"><button class="mybutton">Documentação do NLMR</button></a>

<a href="https://github.com/ropensci/landscapetools"><button class="mybutton">Documentação do landscapetools</button></a>

<a href="https://r-spatialecology.github.io/landscapemetrics/"><button class="mybutton">Documentção do landscapemetrics</button></a>


{% include image.html url="https://material.curso-r.com/rbase/#pedindo-ajuda" image="/projects/ictp-jovens/reading_documentation.jpg" text="Tentando coisas aleatórias por horas ao invés de ler a documentação" %}


## Entender a visão geral do projeto
Neste projeto vocês farão um estudo sistemático sobre o efeito da granularidade (resolução espacial) sobre diferentes métricas de fragmentação de paisagens binárias (habitat ou não-habitat).
 
Paisagens são representações de vegetação (florestas ou biomas) ou recursos (bióticos ou abióticos) no espaço e são o elemento central da ecologia de paisagens (landscape ecology), que procura entender os processos de mudança das paisagens e do seu efeito sobre populações e comunidades.

Para esse estudo, as paisagens serão geradas artificialmente considerando-se os oito métodos geradores de paisagens mais comuns na literatura e controlando a quantidade de habitat em cada paisagem.
 
A proposta é que ao final os alunos geram um relatório sobre as propriedades estatísticas de cada métrica em um grupo de paisagens (definidos pelo método, quantidade de habitat e granularidade). Ao final, busca-se responder quais métricas de fragmentação são mais sensíveis à mudanças na granularidade e em qual direção (e se essa direção é uniforme nos diferentes métodos), quais métodos geradores criam as maiores correlações entre métricas (ou grupos de métricas), e se essas correlações são uniformes no gradiente de habitat. 

Em termos de conhecimentos práticos, os alunos estarão expostos a uma ampla introdução de estatística descritiva e trato de banco de dados, além de uma introdução leve à linguagem R e como armazenar dados no computador. As implicações da importância de saber a estatística de métricas de fragmentação para entender os efeitos do desmatamento e uso agropecuário de terras serão exemplificadas. 

Ao final, os alunos que desejarem continuar serão convidados a produzir um relatório que será convertido pelo monitor em um artigo científico a ser publicado em uma revista internacional de ecologia de paisagens, com a autoria dos alunos.

---

# Dia 1 - Paisagens artificiais 

Apresentação do monitor, dos alunos, e do projeto. 

## Teoria

#### O que são paisagens? E paisagens binárias?

#### Como representar paisagens no computador?

#### O que são resolução e grão das paisagens?

#### Como gerar paisagens artificais no computador?

#### Métodos de Modelos Neutros de Paisagens
 

## Tarefas do dia

Agora que a gente entendeu alguns exemplos (e espero que vocês tenham tentado reproduzir o que foi apresentado até aqui), vamos partir para colocar a mão na massa:

#### Tarefa 1: Gerar paisagens com um método e compartilhar com os colegas

Primeiro, cada um vai escolher um método (cuidado para não repetir) e então gerar **50 paisagens aleatórias 4096 por 4096** com o método escolhido, salvando a **imagem em jpeg** ao final com o nome *nomedométodo_num.jpeg*, para gente saber qual método se trata depois.

Depois, vamos fazer o upload na **pasta compartilhada do Drive** com exemplos representativos (digamos três das 50, por exemplo) de uma **pouco fragmentada**, **intermediária**, e **muito fragmentada** - não suba todas as 50 imagens senão ninguém se acha na pasta depois *hahah*! Assim, vocês pode ver as características das paisagens dos métodos dos colegas. Essas também serão imagens legais para ilustrar os slides da apresentação final de vocês.

#### Tarefa 2: Classificação visual das paisagens nos diferentes métodos

A idéia aqui é a gente bolar uma tabela para comentar os **aspectos visuais** de cada paisagem, ou seja, as características de cada método. Quantos mais aspectos, mais rica é a nossa descrição!

---

# Dia 2 - Métricas de fragmentação

Seminário sobre métricas de fragmentação: porque há tantas métricas e o que elas medem? Quais os grandes grupos de métricas de fragmentação? Como elas se relacionam? Vamos aprender a calcular dezenas de métricas de fragmentação em cima das paisagens geradas no dia anterior com a biblioteca landscapemetrics. Tema para casa: calcular métricas de fragmentação para diferentes paisagens geradas no dia anterior. 

---

# Dia 3 - Descrição e estudos estatísticos

Seminário sobre conceitos básicos de estatística: média, variância, histogramas, distribuição unimodal e bimodal, correlação linear e de ranking (a diferença entre correlação de Pearson e de Spearman), correlogramas. Vamos aprender a graficar as métricas de fragmentação em função da resolução e aprender a interpretar esse gráfico e encontrar alguns coeficientes relevantes para a análise. Vamos aprender a gerar e interpretar um correlograma. Tema para casa: graficar um histograma para cada métrica de fragmentação calculadas no dia anterior, plotar média e variância em função da granularidade, realizar um ajuste linear (os alunos se dividirão e cada um realizará esse tema para num método gerador diferente).

---

# Dia 4 - Revisão de literatura e planejamento

Seminário sobre a literatura já existente. Vamos revisar alguns trabalhos já publicados sobre esse tipo de análise. Vamos pensar nos pontos altos e baixos de cada trabalho, e como a nossa análise pode se diferenciar destes pontos. Quais resultados nossos serão inéditos e quais são conhecidos. Como entender os efeitos da granularidade das paisagens afeta o entendimento de como a fragmentação impacta a ecologia e os processos ecológicos. Ao grupo de alunos que desejar continuar o projeto para além da escola, vamos pensar em como podemos dividir os métodos e as coberturas de habitat entre eles a fim de que cada um explore um conjunto amostral diferente de milhares de paisagens geradas artificialmente. 

---

# Dia 5 - Dicas de escrita e apresentação científicas

Os alunos apresentarão seus resultados de gráficos do tema do dia 3, lembrando que cada aluno apresenta um método diferente e portanto iremos coletivamente discutir as hipóteses de porque observamos cada efeito relatado. Em seguida teremos um momento para discutir a apresentação final do projeto, falando sobre escrita e apresentação científica: o que a apresentação deve conter? O que é e como se escrevem a introdução, metodologia, resultados, conclusões e perspectivas? Como citar outros trabalhos e colocar fonte das imagens? Vamos pensar sobre quais gráficos gerados pelos alunos queremos no nosso relatório final e qual a sequência de informações. 

---

# Links, referências & conteúdo extra

Vou escrever aqui uma série de links que podem ajudar vocês no processo de construção do conhecimento, aprofundamento das questões tangenciais que a gente vai tratar, e engrandecer a apresentação final de vocês (lembrando que ao longo do próprio texto já tem várias referências interessantes!).
