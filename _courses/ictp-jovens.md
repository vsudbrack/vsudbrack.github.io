---
layout: post
title: "Estourando a bolha:"
subtitle: "como opinião se espalha na sociedade"
description: ":brazil: <b>Pop the bubble: how opinion spreads on society</b> is an entertaining guided-study to High School students about Network structure and Opinion dynamics, focusing on lessons of Mathematical modeling and Complex systems."
permalink: /ictp-jovens
---



sejam muito bem-vindos e bem-vindas ao nosso projeto/oficina no **[ICTP-SAIFR Jovens na Física 2021](http://outreach.ictp-saifr.org/escolaverao/)**, onde vamos explorar conceitos em **dinâmica de opinião**, **sociofísica** e **sistemas complexos**! Essa página que vai funcionar como uma "wiki" ou um diário do projeto... e ficará disponível para futuros interessados no assunto. 

A dinâmica da oficina tá prevista em **5 encontros** pela tarde. As primeiras duas oficinas, acredito que serão mais expositivas, pois preciso introduzir vocês a linguagem de programação R e o conteúdo que trabalharemos. Depois que vocês pegarem o fio da meada, tenho certeza que vocês mesmos virão com idéias e melhorias ao nosso modelo. 

E para ajudar vocês a navegar por essa página, aqui está um sumário dos conteúdos.

* Table of contents
{:toc}

---

# Preâmbulo

Primeiro dia é o aquecimento... algumas tarefas e leituras para gente se conhecer, vocês conhecerem o tópico, baixarem os programas e pacotes, e programarem. Enfim, aqui vamos deixar as coisas prontas para gente colocar a mão na massa!

## Instalar o R e o Rstudio

Você sabe o que é uma linguagem de programação? O porque é importante saber programar? Se você nunca teve contato com esse universo, já aviso: e é um caminho sem volta!

{% include image.html image="/projects/ictp-jovens/vicio_de_programar.jpeg" text="Eu, às 3 da manhã, implorando para eu mesmo parar de programar e dormir" %}

Uma discussão interessante sobre o que é uma linguagem de programação, porque é legal a gente saber programar, quais as vantagens de usar o R e o RStudio que usaremos ao longo da semana, está nesse vídeo:
{% include video.html src="https://www.youtube.com/embed/tfPsmDzS74c" %}

Minha proposta em ensinar programação para vocês é ser apenas um começo. Quando vocês souberam encaixar mais funções e algoritmos, o que vocês poderão fazer é limitado apenas pela imaginação. A gente costuma brincar que a pergunta não é *se* dá para programar algo, mas sim *como* se programa algo.

{% include image.html image="/projects/ictp-jovens/programming_is_easy.jpeg" text="Alguém: programar é fácil<br>Eu: cai fora!" %}

Existem várias técnica muito famosas hoje em dia, uma que ele menciona no vídeo de cima é o *Machine Learning*, que significa ensinar o computador a executar uma tarefa ou tomar uma decisão, por exemplo. A gente vi passar longe disso, vamos ficar no básico da programação, mas vamos tentar solidificar os conhecimentos para que o caminho até técnicas mais sofisticadas (que estão em **todas** as ciências) seja o mais brando possível. E o R é uma linguagem com um esforço-benefício excelente. Aliás, esse site aqui é feito em R também. 

Antes de mais nada a gente tem que instalar tanto a **linguagem de programação R** que vamos usar, quanto **RStudio** que é uma interface gráfica para facilitar o uso da linguagem. Para isso não tem mistério, é só seguir todos os passos que estõ bem desmiuçados nesse vídeo:
{% include video.html src="https://www.youtube.com/embed/PWMqxKWHlz4" %}

Agora que temos os programas, vamos nos familiarizar com o R e o RStudio. Aprender as nossas primeiras ferramentas. Assistam esse vídeo aqui de baixo (a partir de 3min20s - antes disse ele mostra o download que vocês já fizeram no outro vídeo mais detalhado...) e **reproduzam** as coisas que ele vai mostrando... então é realmente abrir o RStudio do lado e digitar o que ele mostra, conferir o que o programa retorna, explorar coisas parecidas, etc...
{% include video.html src="https://www.youtube.com/embed/4j_rtffftzQ?start=200" %}

Ele também vai guiar vocês por todo o RStudio, as várias janelas e as várias abas. A gente vai trabalhar com a forma de arquivos (RScript que ele mostra em 5min28s), pois assim a gente vai salvando nosso processo (é como se fosse um caderno) e executando as linhas com *CTRL+Enter*.

Pontos fundamentais da programação que estão nesse vídeo: 
* operações matemáticas (+,-,*,/,^(potência),<(maior),==(igual),...)
* atribuir valores à variáveis
* função print
* função paste
* criar uma lista com as funções c(...) e seq()
* chamar funções sobre essa lista (mean, sum, max...)
* plotar gráficos com plot()
* gerar números aleatórios com runif()

Testem umas funções diferentes... digitem essas linhas e vejam o que o R retorna para vocês:
```r
seq(1, 10)
seq(1, 10, by=2)
rep(2, 10)
sample(seq(1, 10), 3, replace=T) #Rodem mais de uma vez. O resultado muda?
?sample # Abre uma página de ajuda sobre a função sample. Bem últil ;)
```

Agora vamos para um outro vídeo sobre duas estruturas básicas da programação (em qualquer linguagem de programação): a condição (if-else) e  laço (for).  Lembrem-se que basta digitar no RScript de vocês a linha de comando e apertar *CTRL+Enter* para rodar no terminal...

{% include video.html src="https://www.youtube.com/embed/yeAzTe1R9q4" %}

Pontos importantes desse vídeo: 
* testar uma condição com if(condição){execute}else{execute}
* fazer um loop com for(i in lista){execute}


É provável que vocês se sintam sobrecarregados de tanta informação! Aprender a programar é um processo longo, na faculdade é quase um semestre, e vocês estão aprendendo o básico em um dia. Então perguntem, pratiquem, mas não se assustem. Aos poucos vocês vão naturalizando esse conhecimento também. 

## Instalar o pacote *igraph* no R

Pacotes são conjuntos de funções que pesquisadores desenvolveram e disponibilizaram para outros pesquisadores e cientistas usarem. O lema da programação é **dividir para conquistar**, isso significa que a gente pode quebrar problemas grandes em problemas menores, e juntar a solução dos menores... 

Agora a gente vai instalar o pacote que usaremos para trabalhar e visualizar com **grafos**. Execute essa linha no terminal do RStudio de vocês (normal demorar um pouquinho para instalar tudo):
```r
install.packages('igraph', dependencies = TRUE)
```
Nós colocamos esse argumento da função chamado 'dependencies' como verdadeiro, pois assim ele instala todos os pacotes que esses pacotes precisam para executar juntos (sim, pacotes usam pacotes... dividir para conquistar!). Antes de usar as funções de um pacote, a gente precisa carregar ele com a função *library()*, digite
```r
library(igraph)
```

Alguns estudantes tiveram um erro ao instalar o pacote *igraph* no Windows. O erro foi corrigido ao deleter o arquivo *\R\win-library\4.0/00LOCK’* presente na parte onde o *R* foi instalado. 

Por fim, cada pacote tem sua **documentação**. A documentação de um pacote é onda você encontra toda a informação sobre as funções que o pacote tem, e o que elas fazem. Vou deixar aqui as documentações desses pacotes que usaremos para vocês consultarem ao longo da semana.

<a href="https://igraph.org/r/doc/"><button class="mybutton">Documentação do <i>igraph</i></button></a>

Mas em geral a gente é cabela dura e fica tentando rodar coisas até que uma vai (ou a gente cansa haha).

{% include image.html url="https://material.curso-r.com/rbase/#pedindo-ajuda" image="/projects/ictp-jovens/reading_documentation.jpg" text="Tentando coisas aleatórias por horas ao invés de ler a documentação" %}

Não precisa ler a documentação agora, mas saibam que ela está lá e se surgir alguma dúvida vocês podem buscar exemplos e funções lá. 

<!--## Me mandar um email de apresentação

Outra tarefa importantíssima de vocês será **escrever um email de apresentação**! Para mim é muito importante entender mais quem vocês são para eu posso organizar nossas tarefas e nosso grupo de forma que seja mais legal para vocês :)

Além das coisas básicas, como onde mora e estuda, quais os seus interesses em física, em matemática, em informática, pontos que se considera forte e que pode melhorar, experiências de trabalhar em grupo,..., lembrem também de mencionar:
* sistema operacional do computador de vocês e a informação que tive sobre ele - mémoria RAM, se é notebook ou desktop, processador,...;
* o quanto vocês conhecem de computador e se você já programou alguma vez na vida ou fez algo de robótica;
* o email que vocês usam no **GoogleDrive** - provavelmente teremos uma pasta compartilhada!

Prepara um par de parágrafos com as informações que achar mais importantes de destacar e manda pro meu email, **[vitorsudbrack@gmail.com](mailto:vitorsudbrack@gmail.com)**. 

O inverso também é importante, e **aqui no site vocês descobrem bastante sobre mim e sobre as coisas que eu trabalho e me interesso** - explorem-o. No nosso primeiro encontro a gente faz uma roda de apresentação também.
-->

## A visão geral do projeto

Com o avanço de novas tecnologias de comunicação, o **perfil de contatos e a troca de informação** entre pessoas tem sido fortemente alterados na era das redes sociais, como Facebook ou Twitter. Por exemplos duas grandes características das dinâmicas sociais do momento presente são
* **forte presença de contatos não-locais**: hoje em dia você pode receber informação do Japão tão rápido quanto fica sabendo as notícias da sua cidade; e 
* **a ascensão de "influencers**: grupos pequenos de pessoas têm muitos contatos (muito mais que a média de contato dos demais).

Dada que a troca de informações entre indivíduos é fundamental para qualquer sociedade, a pergunta que queremos responder será **qual o efeito dessas mudanças na forma da troca de informação sobre a formação de opinião das pessoas?**.  Você sente que vivemos numa sociedade mais polarizada? Se sim, **será que a física pode ajudar a explorar quais fenômenos estão por trás dessa polarização de opiniões?**

A principal ideia da oficina é fazer a gente pensar sobre **modelagem matemática** da sociedade,  e a partir desse tema a gente vai emplorar programação e uma ferramenta matemática chamada redes. Veremos que fenômenos complexos surgem na população em modelos que tem mecanismos baseados nas dinâmicas de troca de informação dos indivíduos - são os chamados **padrões emergentes**, eles são fruto da interação dos componentes do sistema. 

Vamos construir um **diagrama de fases** para esquematizar quando observamos uma sociedade de opiniões aleatórias e quando observamos uma **sociedade parcimônica** (todos com a mesma opinião). Para tanto, a gente vai usar conceitos da **teoria de grafos e redes** e da **ciência da complexidade**, que são duas ciências irmãs e importantíssimas dentro da física e das demais áreas. 

---

# Redes de contato 

Apresentação ao tópico de redes e grafos. Como representar uma rede no computador e introdução ao pacote *igraph* do R que vocês instalaram. 

## Introdução aos grafos e redes

Vocês provavelmente sabem o que é um **polígono** e que polígonos vivem em planos, de duas dimensões. Podemos pensar em generalizar os polígonos e pensar em **poliedros**, em três dimensões. **Grafos** são uma generalização e abstração dos poliedros e vivem em um número arbitrário de dimensões. 

Eles podem ser pensados matematicamente como dois conjuntos: um conjunto de **vértices** que são os pontos, e um conjunto de **arestas** que são as uniões entre dois pontos. Em grafos chamamos as arestas também de ligações. Os grafos são amplamente usados para modelos problemas de relação entre coisas, e nesse contexto, eles são chamados de **rede** (especialmente na física). Por exemplo, abaixo temos um grafo de aeroportos - cada vértice é um aeroporto e cada ligação é um vôo direto entre os aeroportos com um vôo da LATAM (tirei esse mapa do [FlightConnections.com](https://www.flightconnections.com/route-map-latam-la)). 

{% include image.html image="/projects/ictp-jovens/rede_voos_BR.png" text="Exemplo de rede onde os aeroportos são os vértices e as ligações são vôos entre os aeroportos." %}


Os grafos podem ser **direcionados** ou **não-direcionados**. Por exemplo dos vôos, em geral se existe um vôo de ida (entre A e B) existe um de volta (de B o A). No Facebook as ligações (amizades) também são não-direcionadas, ambos são amigos um do outro. Agora no Twitter, por exemplo, as relações são direcionadas - A segue B não implica que B segue A. Portanto, quando modelamos relações direcionadas usamos grafos direcionados e quando modelamos relações mútuas, usamos grafos não-direcionados. 

Eles também podem ser classificados como **binários** ou **ponderados**. No nosso exemplo da figura, o grafo é binário, simplesmente representa se tem ou não tem um vôo direto entre dois aeroportos. Agora, poderíamos pensar em 'quantos vôos diretos semanais' existem entre o aeroporto A e B. Nesse sentido, Guarulhos e Galeão são muito mais conectados entre si do que Guarulhos e Manaus, por exemplo. Se ponderarmos as ligações (dar um valor para elas), podemos capturar a *intendidade da relação*. 

Nesse trabalho vamos nos concentrar nos grafos não-direcionados e binários - porém vocês são os donos do projeto, se quiserem mais para frente colocar direção e ponderação, bora! Para mais detalhes técnicos, sempre tem a página da [Wikipédia](https://pt.wikipedia.org/wiki/Teoria_dos_grafos). Aqui a gente vai partir para um *hands-on*, e partir para colocar a mão na massa!


Antes, é importante saber que existem duas formas principais de armazenar uma rede no computador: a matriz e a lista de adjacências. Lembrando que *adjacência* é só uma palavra chique para *vizinhança*. 
A **Lista de Adjacência** associa a cada vértice do grafo uma lista de todos os outros vértices com os quais ele se conecta - ela pode ser vista como uma lista de listas. Enquanto que a **Matriz de Adjacência** tem uma estrutura de matriz binária (seus elementos são 0's e 1's) com suas linhas e colunas representando cada um dos vértices da rede e os seus elementos assumem valores 1 indicando que os vértices da linha e coluna estão ligados e 0 caso contrário.

{% include image.html image="/projects/ictp-jovens/representacao.png" text="Lista e matriz de adjacência para um grafo de 5 vértices" %}

Nesse exemplo fica claro que a matriz de adjacência, apesar de ser mais organizada e estruturada que a lista, ela ocupa muito mais memória no computador. A verdade é que armazenar um grafo no computador de forma a minimizar o custo com memória e tempo de acessibilidade é uma tarefa extremamente difícil e, no mundo real, combinam-se várias técnicas diferentes para se ter um armazenamento ótimo. 

{% include colapse.html title="Pergunta"
text="<b>Quantos grafos binários e não-direcionados de 1024 vértices são possíveis?</b><br>Para contemplar o quão grande esse número é, compare com o <a href='http://www.inpe.br/faq/index.php?pai=11#:~:text=Estima%2Dse%20que%20a%20nossa,de%2010%20sextilh%C3%B5es%20de%20estrelas'>número de estrelas no universo</a> e o <a href='https://pt.wikipedia.org/wiki/Universo_observ%C3%A1vel#:~:text=Conte%C3%BAdo%20em%20mat%C3%A9ria,-Representa%C3%A7%C3%A3o%20art%C3%ADstica%20do&text=Dois%20c%C3%A1lculos%20aproximados%20fornecem%20o,em%20torno%20de%201080'>número de átomos no universo</a>.<br><b>E se fosse um grafo direcionado? E ponderado?</b><br>Na sua opinião, essas respostas justificam porque é necessário usar ferramentas estatísticas para trabalhar com grafos?" anstitle="Resposta" ans="Binário e não-direcionado: $2^{N(N-1)/2}$. Binário e direcionado $2^{N(N-1)}$. Ponderado: $\infty$."%}

#### História 

Para saber como a teoria dos grafos começou com um dos mais geniais matemáticos e físicos que já pisou na Terra, o Leonard Euler, assista esse vídeo do **[canal Numberphile](https://www.youtube.com/channel/UCoxcjq-8xIDTYp3uz647V5A)** (um dos canais mais legais do Youtube caso vocês não conheçam...) sobre as **Sete pontes de Königsberg**, legendadas em inglês. A página da [Wikipédia](https://pt.wikipedia.org/wiki/Sete_pontes_de_K%C3%B6nigsberg) traz também a história das pontes em português e fotos dela. 

{% include video.html src="https://www.youtube.com/embed/W18FDEA1jRQ" %}

Existem vários problemas em aberto sobre teoria de grafos. O mais famoso talvez é sobre [coloração de grafos](https://www.youtube.com/watch?v=niaeV_NHh-o) - quantas cores são minimamente necessárias para colorir todos os vértices de um grafo sem que dois vértices vizinhos tenham a mesma cor? - ou então sobre a [planaridade dos grafos](https://www.youtube.com/watch?v=xBkTIp6ajAg) - definir se um grafo pode ou não ser desenhado em uma folha de papel sem que duas ligações se 'cortem'? Quem gosta de problemas abstratos, teoria de grafos é um prato cheio :)

#### Rede aleatória

A **rede aleatória é uma rede sem nenhuma estrutura**. Cada ligação entre dois vértices é sortes como o girar de uma moeda (um sorteio aleatório). A probabilidade de sucesso pode ser definida como $p$. Vamos gerar nossa primeira rede! Para gerar uma rede aleatória com 25 vértices e 20% de ligações distribuídas aleatoriamente pelos vértices, use o comando em R 
```r
random = sample_gnp(25, 0.2)
```

Nota que previamente você tem que ter carregado a biblioteca igraph que nem mostrei antes, pois esse função está lá. Para plotar essa ree aleatória, use a função plot
```p
plot(random)
```

Teste o comando com diferentes probabilidades de sucesso de ligação e as plote.

{% include image.html image="/projects/ictp-jovens/grafos_0.png" text="Redes aleatórias de 25 vértices com quantidades de ligações diferentes" %}

{% include colapse.html title="Pergunta"
text="Note que na rede aleatória esparsa do exemplo acima, existe um vértices isolado (o 16). <b>Qual a probabilidade que um vértice em rede aleatória com $N$ vértices e densidade de ligações $p$ seja isolado?</b> Calcule a probabilidade para uma rede de 25 vértices e $p=0.2$ como no exemplo." anstitle="Resposta" ans="$(1-p)^{N-1}$" %}


## Principais propriedades matemáticas

Vocês devem ter percebido que as redes são uma infinitude de possibilidades... elas são estruturas muito genéricas, e portanto precisamos de um arsenal de ferramentas e conceitos matemáticos para estudá-las de **forma sistemática e suscinta, quantificando características importantes das redes**. Aqui vou apresentar algumas dessas propriedades, e também dar exemplos de aplicações. 

#### Vértices

A propriedade mais importante que vértices possuem é o seu **grau**, que nada mais é do que o número de vizinhos (ligações) que um vértice tem. Para obter os vizinhos e o grau de cada vértice, use (*lembre-se de trocar 'rede' pelo nome da variável que você deu para a rede*): 
```r
neighbors(rede, 1) # Lista todos of vizinhos do vértice 1
degree(rede) # Lista o grau de todos os vértices da rede
```

{% include colapse.html title="Pergunta"
text="<b>Qual a probabilidade que uma rede aleatória com $N$ vértices e densidade de ligações $p$ tenha um vértice de grau $k$?</b> Essa resposta bate com a resposta que você deu anteriormente para o vértice isolado ($k=0$)?" anstitle="Dica" ans="Lembre-se que comentamos que cada ligação era escolhida como o <b>lançar de uma moeda</b>. Qual a probabilidade de  de $k$ caras ao jogar uma moeda $N$ vezes?" %}


Uma geodésica entre dois vértices é o menor caminho que liga esses vértices percorrendo ligações da rede. Para acessar a(s) geodésica(s) entre dois vértices quaisquer, use a seguinte função:
```r
all_shortest_paths(rede, from = 17, to = 24) # Geodésica(s) entre 17 e 24
```
Encontrar essas geodésicas de maneira eficiente é um dos maiores desafios da computação e tem muitas e muitas aplicações. Toda vez que você pede no *GoogleMaps* a rota mais curta entre dois pontos, ele está achando a geodésica entre esses dois pontos na rede que existe por trás do mapa. Um dos algoritmos mais famosos e incríveis da computação faz justamente isso, é o chamado [Algoritmo de Dijkstra](https://pt.wikipedia.org/wiki/Algoritmo_de_Dijkstra). 

Uma noção importante que aparece com as geodésicas é a **centralidade** ou **betweenness** de cada vértice. A centralidade de um vértice é proporcional ao número de geodésicas que passam por esse vértice conectando dois vértices quaisquer da rede. Para conseguir a centralidade de cada vértice, execute:
```r
betweenness(rede) # Retorna a centralidade de cada vértice
```

Vértices de alta centralidade são fundamentais para a "união" da rede e transmissão de informação por ela. 

Existem outras métricas além da *betweenness* para medir centralidade. Outro exemplo é a **proximidade** de cada nó, que é uma medida de quantas ligações são necessárias para acessar todos os outros vértices a partir de um determinado vértice. Para obtê-la:
```r
closeness(rede) # Retorna a proximidade de cada vértice
```
Vértices com proximidade alta estão 'afastados' da rede - a informação precisa percorrer uma distância maior para chegar nesses vértices. 

Já a **matriz de co-citação** é uma matriz quadrado com o mesmo tamanho da rede, e fornece informação sobre o número de ligações compartilhados por quaisquer dois vértices da rede. É uma medida de *semelhança* entre dois vértices diferentes. 
```r
cocitation(rede)[1,3] # Número de vértices que 1 e 3 compartilham
```
Esse nome vem do contexto de redes bibliográficas - dois artigos são conectados se eles se citam. Esse conceito é bem importante em algoritmos de recomendação de conteúdo para usuário. Imagina a rede de filmes da Netflix e dois filmes são conectados se mais de $70%$ dos usuário que assistiram ambos os filmes, favoritaram ambos. Agora um outro usuário que terminou de ver um filme do catálogo, e agora precisa de uma recomendação do próximo filme para assistir: basta achar o filme com maior índice de co-citação com o filmes que esse usuário favoritou. Claro que isso pode (e deve!) ser bem mais complexo, com múltiplos critérios para sugestão... 

{% include colapse.html title="Pergunta"
text="<b>Qual a probabilidade que uma rede aleatória com $N$ vértices e densidade de ligações $p$ tenha dois vértices iguais?</b> Esses dois vértices precisam compartilhar todas as mesmas ligações e o índice de co-citação entre eles seria máximo." %}

#### Ligações

A **densidade de ligações** ($l$) é a razão entre o número de ligações existentes sobre o número de possíveis ligações na rede $l=\frac{2L}{N(N-1)}$, e é calculada por 
```r
edge_density(rede)
```
Densidades de ligações próximas de 1 significam que todo vértice é vizinho de todo outro vértice. Esse é um dos parâmetros fundamentais das redes, pois ele dá uma grandeza adimensional entre o número de ligações em relação ao número de vértices. Geralmente denominamos os grafos com baixa e alta densidade de vértices como **grafos esparso e denso**, respectivamente.

{% include colapse.html title="Pergunta"
text="Anteriormente usamos o $p$ como a própria densidade de ligações ($l$). De fato, numa rede aleatória infinita, a densidade de ligações é justamente o $p$ (a probabilidade de que cada ligação ocorra). Agora, <b>qual a probabilidade que uma rede aleatória finita, de $N$ vértices, tenha a densidade de ligações $l$ igual à $p$ (probabilidade de que cada ligação aconteça)?</b> Você consegue entender a diferença entre esses dois conceitos? Essa diferença importantíssima é a base da <i>estatística de verossimilhança</i>." %}


As ligações podem formar estruturas. A mais importante é o **triângulo**, um ciclo de três vértices $a\to b\to c\to a$, você consegue uma lista dos triângulos, assim como o número de tiângulos por vértice com

```r
triangles(rede) # Fornece uma lista de trios
count_triangles(rede) # Fornece o número de triângulos que cada vértice participa
```

O triângulo é a noção mais básica depois da ligação. Uma generalização do triângulo, que são três vértices completamente conectados é o **clique-N**, que é um conjunto de N vértices completamente ligados entre si. Você os obtém com

```r
cliques(rede, min=4) # Retorna todos os cliques com 4 ou mais vértices
largest_cliques(rede) # Retorna o maior clique da rede
clique.number(rede) # Retorna o tamanho do maior clique da rede
```
Assim, os triângulos seriam os *clique-3*. 

{% include colapse.html title="Pergunta"
text="<b>Qual a probabilidade que uma rede aleatória com $N$ vértices e densidade de ligação $p$ tenha um clique de tamanho $n$? </b>" %}

E o oposto de um clique é um **conjunto de vértices independentes (IVS)**, isso é, um conjunto de vértices que não tem nenhuma ligação entre eles, eles não se comunicam. O maior IVS é obtido com 
```r
largest_ivs(rede) # O maior IVS
independence.number(rede) # Tamanho do maior IVS
```

#### Rede

A **Distribuição de grau** é um histograma que mostra a fração de vértices que contém cada grau. Para temos duas funções no pacote *igraph*, *degree()* retorna o grau de cada vértice e *degree_distribution()* retorna a fração de vértices que tem cada grau. Um plot super importante é a distribuição de grau em escalas linear e logarítmica:
```r
plot(0:max(degree(rede)), degree_distribution(rede), type = 'h', lwd=3, col ="blue", 
    xlab="Grau", ylab="Frequência", main="Distribuição de grau") # Em escala linear
plot(0:max(degree(rede)), degree_distribution(rede), type = 'l', lwd=3, col ="red", 
    xlab="Grau (log)", ylab="Frequência (log)", main="Distribuição de grau",
    log = "xy") # Em escala log-log
```

E também é possível fazer um pouco de estatística em cima da distribuição de grau:
```r
mean(degree(rede))# Grau médio da rede
sd(degree(rede))  # Desvio-padrão da distribuição de graus
max(degree(rede)) # Maior grau da rede
```

{% include colapse.html title="Lema do aperto de mão"
text="<b>Derive uma relação matemática entre o número total de ligações ($L$), o tamanho da rede ($N$) e o grau médio da rede ($\bar{k}$).</b><br>Depois que você a derivar, confira a resposta com o chamado <a href='https://pt.wikipedia.org/wiki/Lema_do_aperto_de_m%C3%A3o'>Lema do aperto de mão</a>." %}


Um grafo tem uma **distância média** entre vértices, que nos diz o quão fácil é caminhar entre dois vértices quaisquer em média, ligando-os por suas geodésicas, e também tem um **diâmetro** que é o tamanho da maior geodésica:
```r
mean_distance(rede)
diameter(rede)
```

A **transitividade** (ou *coeficiente de clustering*) mede a probabilidade que dois vértices vizinhos de um terceiro vértice sejam vizinhos entre si. Ela esta relacionada com o número de triângulos da rede.
```r
transitivity(rede) # A transitividade média da rede
transitivity(rede, type='local') # A transitividade de cada vértice
```

#{% include colapse.html title="Pergunta"
#text="<b>Qual a relação matemática entre o número total de triângulos ($T$), o tamanho da rede ($N$) e a transitividade da rede ($C_T$)?</b>" %}

A **assortatividade** da rede é uma medida da correlação entre o grau de vértices vizinhos, e por ser uma correlação assume valores no intervalo $[-1,1]$. Você pode calcular ela com a seguinte função
```r
assortativity_degree(rede)
```

Em poucas palavras, quando a assortatividade é negativa significa que vértices de grau alto estão ligados com vértices de grau baixo (graus anti-correlacionados). Quando a assortatividade é positiva, significa que vértices de grau alto estão ligados aos vértices de grau alto (graus correlacionados). Assortatividades próximas de zero significam ausência dessa estrutura. 

Para ver o **grau médio dos vizinhos de cada vértice** ($k_{nn}$) e a **média do grau médio dos vizinhos dos vértices de grau $k$** ($k_{nn}(k)$), use
```r
knn(rede)
plot(unlist(knn(a)[2]), xlab="Grau", ylab="Grau médio dos vizinhos", main="Assortatividade", col = "darkgreen", pch=16) # Plot de assortatividade
```


Por fim, muitas redes consistem em módulos densamente conectados entre si, mas escassamente conectados a outros módulos. Essa é a **modularidade** da rede, e tentar encontrar essas *sub-redes*, também chamadas de módulos, dentro da rede principal, é uma tarefa árdua, existem vários métodos. 

Um deles que classifica os módulos pela conectância entre vértices (ligações com alta *betweenness* são mais prováveis de separar clusters) é o *cluster_edge_betweenness()*:

```r
ceb = cluster_edge_betweenness(rede) 
dendPlot(ceb)   # Visualizar o dendrograma de módulos
plot(ceb, rede) # Visualizar os módulos na rede
modularity(ceb) # Medida da razão de ligações dentro e entre módulos
```

Um exemplo de modularidade poderia ser a rede de músicas do *Spotify*. Duas músicas dessa rede são ligadas se elas aparecem simultaneamente na mesma *playlist* de pelo menos 5000 ouvintes diferentes. Quais seriam as modularidades dessa rede? Teria o módulo de rock, o módulo de pop, o módulo de música clássica, samba, e por aí vai... Claro que pode ser que várias pessoas coloquem 'Despacito' numa playlist com um sertanejo sofrência tipo 'S de Saudade', mas isso é muito inferior ao número de playlists em que a primeira aparece com outros reggaetons e a segunda com outros sertanejos.

{% include image.html image="/projects/ictp-jovens/clusters.png" text="Exemplo de um grafo de modularidade alta, média e baixa" %}

{% include colapse.html title="Perguntas" text="Estamos interessados na mudança estrutural das redes de contato na sociedade. Então, <b>como vocês associariam as características de redes sociais antigas e as recentes com as propriedades das redes apresentadas?</b> Em especial, comentamos sobre os <i>influencers</i>, então <b>qual seria a propriedade matemática de um vértice <i>influencer</i>?</b>" %}


## Sociedades

Até agora a gente conheceu as redes aleatórias, aquelas que não tem nenhum estrutura. Essas redes são muito importantes porque eles permitem a gente fazer cálculos teóricos sobre pobbilidades de ocorrência de vário aspectos das rede (como eu coloquei nas Perguntas ao longo das propriedades). Portanto, as redes aleatórias são nossas "provas reais" para saber se o que estamos fazendo está correto. 

Agora, a gente sabe que a nossa sociedade é **fortemente estruturada** e pouco aleatória. Vou apresentar aqui alguns dos métodos para gerar redes estruturadas. A primeira são baseadas em redes uniformes e a segunda são baseados em algoritmos de crescimento de redes. 

#### O anel

Uma sociedade totalmente rústica seria permitir a comunicação entre vizinhos. É o *telefone sem-fio* que todo mundo aprendeu no jardim de infância. Para gerar um anel, termo para se referir à uma sequência circular de vértices, use a seguinte função da biblioteca *igraph*:

```r
anel = make_ring(10) ## Gerando um anel de 10 vértices
```

Para plotar um anel, vamos começar a incrementar as opções de plot. Começe comparando o resultado entre diferentes opções:
```r
plot(anel)
plot(anel, vertex.size=9)
plot(anel, vertex.size=9, vertex.color='blue')
plot(anel, vertex.size=9, vertex.color='blue', edge.width=3)
plot(anel, vertex.size=9, vertex.color='blue', edge.width=3, vertex.shape='square')
plot(anel, vertex.size=9, vertex.color='blue', edge.width=3, vertex.shape='square')
plot(anel, vertex.size=9, vertex.color='blue', edge.width=3, vertex.shape='square', edge.curved=TRUE)
```
onde *anel* é o nome da variável que você salvou o grafo anelar no comando anterior. Várias outras opções vocês encontram na [R Graph Gallery](https://www.r-graph-gallery.com/network.html).  

#### O *pequeno mundo*

Para adicionar ou ligações entre dois vértices, use os operadores de some e subtração junto com a função *add.edges* que diz que o objeto sendo adicionado ou subtraído é uma ligação. Por exemplo,
```r
anel = add.edges(anel, c("7","8")) #Adiciona uma ligação entre o nó 7 e 8
anel = delete_edges(anel, 3) #Remove a terceira ligação E(anel)[3]
```
e assim você pode adicionar não-localidades. 

Uma **rede *pequeno mundo*** tem muito contatos locais, entre vizinhos, junto com alguns poucos **contatos aleatórios não-locais**. Ela é dita *[pequeno mundo](https://pt.wikipedia.org/wiki/Redes_de_pequeno_mundo) (small world network)*, pois ela representa uma rede de contato em que a distância entre duas pessoas é pequena devido aos 'atalhos' dos contatos não lineares.

Para gerar uma rede pequeno mundo
```r
sample_smallworld(1, 25, 1, 0.1) # Um anel de 25 vértices com 10% das ligações aleatórias
```

{% include image.html image="/projects/ictp-jovens/grafos_1.png" text="Grafo anelar e rede <i>pequeno mundo</i>" %}

#### O látice

Uma generalização do anel é o chamado **látice**. É um exemplo de **grafos regular**, ou seja, todos os vértices (ou quase todos excluindo a borda) são idênticos em termos de ligação. Para fazer látices, use:
```r
lat = make_lattice(c(5,5), dim = 2)
lat_torus = make_lattice(c(5,5), dim = 2, circular = T)
```

{% include image.html image="/projects/ictp-jovens/grafos_lats.png" text="Grafos regulares (látices)" %}

Para fazer uma pequeno mundo em cima de um látice bidimensional 5 por 5, use
```r
sample_smallworld(2, 5, 1, 0.05)
```
para randomizar 5% das ligações regulares.

#### E a adesão preferencial: *o rico fica mais rico*

Hoje em dia, com o avanço das redes sociais, quem são as pessoas que você segue? Os algoritmos dessas redes vivem sugerindo nomes para você seguir. Concorda que quanto mais seguidores uma pessoa tem, maior a probabilidade desses algoritmos sugerirem essa pessoa? 

Esse fenômeno é chamado **adesão preferencial**, isso significa que quanto mais vizinhos vocês tem, maior a probabilidade de você receber novos vizinhos. Esse mecanismo ficou muito famoso pela frase *the rich get richer* - o rico fica mais rico - uma vez que quanto mais dinheiro você tem, mais fácil é ganhar dinheiro (e por isso a gente tem que lutar por programas de distribuição de renda e combate a desigualdade, porque naturalmente ela só aumenta...). 

Matematicamente, a probabilidade de receber uma nova ligação $P_i$ deve ser proporcional ao grau do vertex $k_i$:

$$P_i \propto k_i^\alpha$$

Ou seja, quando $\alpha$ vale 1, então um vértice com o dobro de ligações que outro tem o dobro de probabilidade de receber uma nova ligação que o outro. Se $\alpha$ valer 2, então terá 4x maior probabilidade de receber uma ligação. Se $\alpha$ for 0, então todos os vértices têm a mesma probabilidade de receber uma nova ligação, e eles diferem apenas pelo 'tempo' em que foram adicionados na rede ($\alpha=0$ é chamada **rede exponencial**). Portanto, quanto maior o $\alpha$, mais **desigual e heterogênia** a rede se torna, sendo monopolizada por poucos vértices. 

Um dos primeiros trabalhos a propor esse mecanismo para explicar a estrutura de várias redes reais foi o trabalho liderado pelo Barabasi e Albert, por isso esse modelo de rede é chamado de  *[Barabási-Albert model](https://pt.wikipedia.org/wiki/Barab%C3%A1si%E2%80%93Albert_model)* (BA model). No paper original de 1999 abaixo, eles mostram esse mecanismo por trás da rede de citação de autores (e.g. quanto mais citações um cientista tem, mais provável que um artigo cite ele), rede WWW e redes elétricas.

{% include cite.html title="Emergence of scaling in random networks" author="Barábasi, A.L. & Albert, R." journal="Science" year="1999" url="https://doi.org/10.1126/science.286.5439.509" %}

Alias, toda a **[homepage do Barabasi](https://barabasi.com/)** é muito legal - e ele tem uns livros incríveis sobre redes que eu deixei no material extra para vocês verem nas férias. 

Para gerar redes com adesão preferencial, utlize o seguinte comando do pacote *igraph*:
```r
sample_pa(n, power = 1, m = NULL, directed = TRUE)
```
onde $n$ é o tamanho da rede (número de vértices), $power$ é o expoente $\alpha$ da adesão preferencial ($0$ é uma rede expoenencial, $1$ é adesão preferencial linear,...), $m$ é o número de ligações que cada nó é adicionado na rede (o produto $nm$ é o número de ligações na rede), e $directed$ é TRUE para grafos direcionados e FALSE para grafos sem direção. Confere a heterogeneidade que as redes do modelo BA têm:

{% include image.html image="/projects/ictp-jovens/grafos_2.png" text="Grafos com adesão preferencial" %}



{% include colapse.html title="Atividade"
text="<b>Faça uma tabela associando as principais propriedades de redes (grau médio, transitividade/clustering, assortatividade, diâmetro) com os principais modelos (aleatória, látice, pequeno-mundo, exponencial e BA).</b> Use termos como 'alto/baixo', 'homogêneo/desigual', 'muito/pouco provável', ..., para comparar as propriedaes entre modelos. Na dúvida de qual deveria ser o padrão, gere redes no computador e compute as propriedades." %}



E por curiosidade, há também alguns sites, por exemplo [MovieGalaxies](https://moviegalaxies.com/), que fazem redes sociais a partir de **personagens de filmes**. Existem alguns artigos analisando as *character networks*, redes de personagens - por exemplo com [Senhor dos Anéis](https://arxiv.org/abs/1606.02610) e [Harry Potter e Crepúsculo](https://arxiv.org/abs/1608.00646).  


---

# Da estrutura para dinâmica

As redes sociais que discutimos nos fornecem informação sobre a estrutura da rede, isto é, as características das interações fixas no tempo. Agora queremos adicionar uma **dinâmica** para completar o nosso modelo de troca de informações e opiniões, essa é a parte que dita a **evolução temporal** do modelo, dita o que acontece a medida que o tempo passa. 

## Modelando Opinião 

A primeira grande simplificação que vamos fazer é trabalhar com **opiniões binárias**: *sim* ou *não*, *favorável* ou *contrário*, *mais* ou *menos*, *bolacha* ou *biscoito*, *feijão por cima do arroz* ou *arroz por cima do feijão*. 

{% include image.html image="/projects/ictp-jovens/opiniao_binaria.jpeg" text="Exemplos de opiniões binárias polarizadas (esq.) e misturada (dir.)" %}

Um exemplo real desses opiniões no Twitter pode ser visto [nesse tweet](https://twitter.com/fabiomalini/status/1350079250955689984?s=20) do [@fabiomalini](https://twitter.com/fabiomalini), onde ele conectou os retweets do Twitter (quanto maior o vértice mais retweetado - mais ligações). Ele faz parte do [Laboratório de Estudos sobre Imagem e Cibercultura](http://www.labic.net/).

Para abstrair matematicamente, vamos representar as opiniões com dois números, por exemplo $-1$ e $1$. Vamos inicializar a rede com opiniões aleatórias
```r
TAM = length(V(rede)) #Tamanho da rede
V(rede)$opinion = sample(c(-1,1), TAM, replace = T) # Opinião aleatória de cada vértices
# Plotar as opiniões iniciais com opinião colorida e tamanho proporcional ao grau
plot(rede, vertex.label='', vertex.size = 3+14*(V(rede)$degree/max(V(rede)$degree)), 
	vertex.color=rgb(matrix(c(0*(V(rede)$opinion==0),1*(V(rede)$opinion<0),1*(V(rede)$opinion>0)),ncol=3), alpha = 0.5),
	layout=layout.sphere(rede), main="\n\nEstado Inicial") 
```

E vocês terão algo assim:

{% include image.html image="/projects/ictp-jovens/cond_iniciais.png" text="Exemplos de condições iniciais de opinião aleatórias" %}

## Troca de opinião

Agora que temos uma rede de contatos e opinião, vamos colocar uma dinâmica de troca. Para isso, precisamos de um **algoritmo** de troca de opinião, isto é, uma rotina/receita que avança o sistema no tempo. Por exemplo, para cada passo de tempo, podemos atualizar todos os vértices com a moda da opinião de seus vizinhos. 

Vamos usar uma atualização simultânea de opinião, chamada **automata celular**. Em cada semana, todos os vértices da rede irão interagir com todos os seus vizinhos, coletando as opiniões deles e trocando as suas opiniões para a opinião da maioria dos seus vizinhos. Caso os vizinhos empatem em opinião, o vértice permanece com a sua opinião prévia. Para traduzir essa receita em funções matemática, podemos usar:

* Primeiro nós somamos todas as opiniões dos vizinhos - *neighbors(rede, i)* retorna os vizinhos do vértice *i*. Assim, *V(rede)$opinion[neighbors(rede, i)]* retorna a opinião de todos os vizinhos do vértice *i*.

* Se a soma é positiva, significa que a maioria dos vizinhos tem opinião $+1$. Se for negativa, $-1$, e no caso de empate a soma é zero. Essa é exatamente a função sinal *sign* - ela retorna o sinal do número, ou zero. 

*  Salvamos toda essa conta no vetor \$*temp* de cada vértices para garantir que a atualização é simultânea dentro daquele loop. (Ou seja, primeiro calculamos e *depois* atualizamos!)

* Por fim, retornamos a variável temporária \$*temp* com todas as atualizações. Nos pontos que \$*temp* é zero, retornamos a \$*opinion* (ou seja, não atualizamos).

Encorporamos todas essas etapas numa função *update_opinions* e chamamos ela no corpo do programa.

```r
# Definindo a função de atualização:
update_opinions = function(rede){
  for (i in seq(1,length(V(rede)))) {
    V(rede)$temp[i] = sign(sum(V(rede)$opinion[neighbors(rede, i)]))
  }
  return(V(rede)$temp + (1-abs(V(rede)$temp))*V(rede)$opinion)
}

# No corpo do código nos atualizamos as opiniões chamando essa função:
V(rede)$opinion = update_opinions(rede) # Primeira semana
V(rede)$opinion = update_opinions(rede) # Segunda semana
V(rede)$opinion = update_opinions(rede) # Terceira semana
V(rede)$opinion = update_opinions(rede) # Quarta semana
V(rede)$opinion = update_opinions(rede) # Quinta semana
```

Ao plotar atualizações sucessivas, temos um exemplo de **evolução temporal da rede**.

{% include image.html image="/projects/ictp-jovens/evolucao_temporal.png" text="Exemplo de evolução temporal de um látice 10x10" %}

Interessante notar que formam-se **regiões de opinião azul** e **regiões de opinião verde**. Esses grupos de vértices são geralmente chamados de clusteres. Portanto há uma **clusterização de opiniões**. 

Note que é difícil de acompanhar a opinião de cada vértice, especialmente se trarbalharmos com muitos como em breve faremos. Então ao invés de plotar cada vértice da rede, vamos plotar a **média da opinião de todos os vértices** da rede. Esse é um parâmetro estatístico da dinâmica (a gente poderia bolar outros).

Por fim, repetir uma operação várias vezes é o que vimos ser um *loop for*. O *loop temporal* é portanto uma sequência de atualizações do tempo zero até o tempo final, onde atualizamos a opinião e armazenamos a opinião média da rede:
```r
TF = 15 #Número de semanas
medias = rep(0,TF)
for (tempo in seq(2, TF)) {
  V(rede)$opinion = update_opinions(rede)
  medias[tempo] = mean(V(rede)$opinion)
}
```

E para plotar as médias, usamos

```r

## Plot das médias
plot(medias[1:TF], type='b', col='black', lwd=3, xlab="Tempo em semanas", 
	ylab="Opinião média da rede", main="Evolução Temporal", ylim=c(-1,1), xlim=c(0,TF))
## E plotar umas linhas pontilhadas de referência
curve(1+0*x, col="blue", lty = "dashed" , lwd=3, add = T)
curve(0+0*x, col="gray", lty = "dashed" , lwd=3, add = T)
curve(-1+0*x, col="green",lty = "dashed", lwd=3, add = T)
```

No resultado final podemos combinar ambos todos os plots.

{% include image.html image="/projects/ictp-jovens/evolucao_temporal_media.png" text="Exemplo de evolução temporal da média de uma rede exponencial." %}


O estado final em que a rede não muda mais é chamado **estado estacionário** da dinâmica.

## Diagramas de fase

Um grupo de estados estacinários com características qualitativas diferentes é chamado de **fase**. Nessa dinâmica, por exemplo, podemos ter duas fases: uma rede parsimônica (todos concordam) e uma rede não-parsimônica (clusters de opiniões diferentes).

Para analisarmos quantitativamente a mudança de fase (chamada de **transição de fase**), é necessário ter um **parâmetro de ordem**, como por exemplo a opinião média. Mas nota que a opinião média de uma rede parsimônica de opinião $+1$ é diferente da $-1$, enquanto que elas são a mesma fase (concordância). Por isso, tiramos o módulo da média (ou seja, não importa a opinião, e sim o concenso). 

```r
ordem = abs(mean(V(rede)$opinion))
```

Então podemos ver como o **valor do parâmetro de ordem em função do grau médio da rede**, i.e. o número médio de opiniões trocadas entres os vértices. Esse tipo de gráfico é chamado **diagrama de fase**, pois dá a fase do estado estacionário de uma rede em função de suas características (vocês certamente conheçem o estado da matéria em função da temperatura e pressão! É análogo.)

{% include image.html image="/projects/ictp-jovens/phase_random_512.png" text="Diagrama de fase para uma rede aleatória de 512 vértices." %}

Como esperado, quando tenhamos poucos contatos, poucas trocas de informação, a rede seja não-parsimônica, ou seja, média $0$. Enquanto que quando há muuuita troca de informação, a rede se torna parsimônica, e o parâmetro de ordem é $1$.

#### Tipos de transição de fase

Existem dois grandes grupos de transições de fases - as de primeira e de segunda ordem. Transições de primeira ordem são descontínuas, um salto, em função do parametro do modelo. O valor do parâmetro que ocorre essa troca de fase é dito **valor crítico** do parâmetro para a transição, geralmente representado por um $^*$. No outro grande grupo o sistema vai continuamente de uma fase para outra, porém a derivada da curva não é contínua. O ponto em que a derivada não é contínua é denominado valor crítico.

{% include image.html image="/projects/ictp-jovens/transicao.png" text="As duas grandes classes de transição de fase" %}

Vale ressaltar que essas descontinuidades acontecem apenas no **limite termodinâmico**, que é quando **o número de vértices é infinito**. Sabemos que no computador a gente não chega nem perto desse número, então precisamos de outras técnicas para averiguar o tipo de transição com um número finito de vértices. 

{% include colapse.html title="Pergunta"
text="<b>A transição entre fases do diagrama de fases para uma rede aleatório de 512 vértices é uma transição de primeira ou de segunda ordem?</b> Lembra-se de considerar o <i>limite termodinâmico</i>." %}


## Atividade fundamental

Chegou o momento culminante! Essa é a última atividade que eu proponho para vocês, e nos próximos dias vocês que vão tomar as rédias do projeto.

Vamos fixar as redes em **512 vértices** e número de ligações será variável (lembrem-se do teorema do aperto de mão). Vamos criar um diagrama de fases para cada uma das redes que estudamos: látice, pequeno-mundo (com $5\%$ de aleatorização), aleatória, exponencial ($\alpha = 0$), e adesão preferencial linear ($\alpha = 1$).

E comparando todos esses diagramas que vocês prepararam, vocês têm todas as ferramentas para discutir na **apresentação** de vocês: **Qual o efeito de termos mais contatos? Qual o efeito de termos mais contatos não-locais? (Redução do diâmetro da rede).  Qual o efeito de termos uma maior heterogeneidade na distribuição de contatos?  Qual a interpretação disso em termos de sociedade? São esses os efeitos que vocês observam no mundo real?**


---

# Mundo real, problemas reais

Hoje é dia de vocês adicionarem mais problemáticas no nosso modelo a fim de deixá-lo mais parecido com a realidade, e os padrões que observamos nele mais parecidos com os padrões que a gente comentou que observa na sociedade.

Aqui é importante lembrar que **todo modelo é uma aproximação**, não existe um modelo que seja perfeito ou que não possa ser melhorado. Tem uma frase famosa de um estatístico que diz

{% include quote.html text="Essencialmente, todos os modelos estão errados, mas alguns são úteis." author="George Box"%}

A própria palavra **modelo** já carrega um tom de idealização e de simplificação! No nosso modelo, podemos pensar sobre a introdução de alguns dos novos fatores. Algumas sugestões:

* **Efeito de 'unfriend'**: não trocar informação com amigos que tenham uma opinião contrária a sua - ou até mesmo substituir amigos de opinião contrária por pessoas com opinião semelhante;
* **Fatores externos** em direção à uma das opiniões, como por exemplo a mídia, podem fazer as transções $-1\to 1$ e $1\to -1$ não necessariamente equiprováveis;
* **Influência assimétrica**, ou seja, você consome muito mais informação do que você informa, portanto as relações de troca de informação não são necessariamente simétricas;
* **Efeito das massas**, e.g. as pessoas 'maria-vai-com-as-outras' que seguem a opinião da maioria da população;
* **Efeito de opinião duradoura**, i.e. uma pessoa que acaba de trocar de opinião é mais provável que a troque também, enquanto uma pessoa que mantém sua opinião há longos tempos tem uma menor probabilidade de trocar de opinião.

Proponham as suas também! Vocês devem refletir sobre **qual desses ingredientes vocês acreditam ser(em) o(s) mais fundamental(is) em nossas interações sociais** para adicionar ao modelo. Implemente um dos efeitos que considera fundamental e repita as análises anteriores sobre o estado estacionário: **como o efeito escolhido altera as fases do modelo básico? Em quais redes esses efeitos são mais ou menos percebidos?**

---

# Modelagem matemática

A proposta do último dia é perceber que, através do uso de modelagem matemática e de redes complexas, é possível unificar problemas de várias áreas da física em um único framework. 

## Problemas multi-escala

Se a gente parar para pensar em quais são os principais desafios da física
do século XXI, o que vocês responderiam? Muito provável que mencionem coisas das grandes escalas astronômicas, como matéria escura, energia escura, buracos negros, ondas gravitacionais, instantes primordiais, expansão do universo,..., ou também algo das pequenas escalas atômicas, como o modelo padrão, novas partículas, mecanismos de Higgs, supercordas, supercondutores, femto- e nanotecnologia,...

Mas vocês já pararam para refletir onde mora o desafio em entender os processos e mecanismos que moram em escalas espacais no meio disso tudo?
Justamente o fato de morarem em **escalas espacais intermediárias e comunicantes** fazem com que os sistemas ligados à biologia sejam muito desafiadores para físicos e matemáticos. A gente diz que essas escalas são comunicantes quando o micro influencia o macro e o macro influecia o micro, através dos chamados **feedback loops**.

Um vírus, centenas de vezes menor que uma célula, é capaz de derrubar o PIB de um país de milhões de pessoas, enquanto que o investimento de grande países em uma vacina para impedir a transmissão do vírus nas menores escalas. Ou ainda a mutação de uma base nitrogenada no núcleo de uma célula durante a sua reprodução é capaz de alterar um traço de um indivíduo formado por bilhões de células, alterando a forma como a sociedade o incluí e alterando a sua reprodução na macro-escala. 

Assim como no quadro multi-escalas do Van Gogh abaixo, existem processos interessantes em várias escalas espaciais e todas elas interagem, formam padrões, colaboram ou competem tornando seus efeitos desafiadores de serem estudados. 

{% include image.html image="/projects/ictp-jovens/multiescala.png" text="Um quadro multi-escala do VanGogh" %}


## Quando o todo é maior que a soma das partes

Essa grande classe de problemas multi-escalas são chamados **Sistemas Complexos**. São sistemas em que o **o todo é maior que a soma de suas partes.** Uma frase muito famosa em sistemas complexos é que o dividir um cavalo ao meio, você não tem dois pequenos cavalos. 

Em geral na física a gente sempre supõe a superposição das coisas. Superposição de estados, superposição de partículas, superposição de efeitos,... e isso nos levas as várias **equações lineares** que temos e que representam essa visão de física *reducionista*. Porém os sistemas complexos são o extremo oposto da superposição, eles são *intrinscicamente* não-lineares. 

## As lentes matemáticas

Muito esforço dos físicos se concentra em criar modelos matemáticos. Hoje temos excelentes modelos para descrever processos ecológicos e evolutivos, de materiais complexos, do mercado financeiro, de jogos... mas **por que criar modelos matemáticos** para descrever o mundo? 

Com eles a gente pode
* Entender mecanismos e padrões
* Propor novos conceitos
* Conectar processos e testar hipóteses
* Prever *um* futuro

{% include image.html image="/projects/ictp-jovens/modelagem.png" text="Modelos matemáticos permitem criar novas relações entre informação" %}

Por exemplo, considere a possibilidade de **conectar processos**. Já pensaram que poderíamos interpretar nosso modelo básico em termos de *campo magnético spin* de partículas, ao invés de opiniões. Opinião $+1$ ou $-1$ poderiam ser *spin up* e *spin down* e o processo de troca de opinião seria o alinhamento de spin com o campo magnético gerado pelos spins vizinhos. Como você interpretaria as duas fases nesse contexto?

---

# Apresentação 

Por fim, confira os **slides** da apresentação final feitas pelos alunos **Jadson** Araujo Costa (Instituto Federal de Alagoas - Campus Maceió), **Jeann** da Rocha Silva (Colégio Fantástico), **Letícia** Vieira da Silva (IFCE - Campus Juazeiro do Norte) e **Maria Clara** Couto Lorena (IFRN - Campus Macau). Todos os conteúdos e gráficos foram realizados por eles durante os cinco dias de oficina da *Escola de Verão ICTP-SAIFR para Jovens na Física* 2021. 

{% include image.html image="/projects/ictp-jovens/pop_bubble.png" text="Slides da apresentação final do grupo" url="assets/docs/projects/ictp-jovens/pop_bubble_slides.pdf" %}


E a **apresentação dos resultados finais** dos alunos também está disponível no canal do *Youtube* do ICTP-SAIFR.

{% include video.html src="https://www.youtube.com/embed/Yb9C2z4Uds8" %}

Nossos agradecimentos especiais aos organizadores da escola, Nathan Berkovits (ICTP-SAIFR/IFT-UNESP)
Lucas David Feitosa C. (ICTP-SAIFR/ETEC Guaracy Silveira), João Viana Lopes (Universidade do Porto), Pedro Vieira (ICTP-SAIFR/Perimeter Institute). Todos os projetos estão disponíveis em vídeo na **[página do evento](http://outreach.ictp-saifr.org/escolaverao/)**, bem como informações sobre futuras edições.

---
<!--
# Conteúdo extra

Vou escrever aqui algumas recomendações para quem se interessou no tópico e quer aproveitar as férias fazendo uma boa e interessante leitura!

* **Livro** *[Linked: How Everything Is Connected to Everything Else and What It Means for Business, Science, and Everyday Life](https://www.amazon.com.br/Linked-Everything-Connected-Business-Everyday-ebook/dp/B06XC9JM6Y/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=linked&qid=1608582248&sr=8-1)* do Barábasi. 
* **Livro** *[Bursts: The Hidden Patterns Behind Everything We Do, from Your E-mail to Bloody Crusades](https://www.amazon.com.br/Bursts-Patterns-Everything-mail-Crusades-ebook/dp/B003NX7NBU/ref=pd_sbs_4?pd_rd_w=uENqo&pf_rd_p=dba274c4-9919-41b0-a2f8-76fb24466c03&pf_rd_r=9HBR8Q6VQAQ0RWCVZ40G&pd_rd_r=531ff5b1-82b5-49a8-b122-d0a36f17b533&pd_rd_wg=CJIR7&pd_rd_i=B003NX7NBU&psc=1)* do Barábasi.
* **Livro** *[Six Degrees: The Science of a Connected Age](https://www.amazon.com.br/Six-Degrees-Science-Connected-English-ebook/dp/B00256Z3B8/ref=pd_sbs_3?pd_rd_w=uENqo&pf_rd_p=dba274c4-9919-41b0-a2f8-76fb24466c03&pf_rd_r=9HBR8Q6VQAQ0RWCVZ40G&pd_rd_r=531ff5b1-82b5-49a8-b122-d0a36f17b533&pd_rd_wg=CJIR7&pd_rd_i=B00256Z3B8&psc=1)* do DJ Watts.
* Absolutamente qualquer livro do **Leonard Mlodinow**, em especial [O andar do bêbado: Como acaso determina nossas vidas](https://www.amazon.com.br/andar-b%C3%AAbado-acaso-determina-nossas-ebook/dp/B008FPZPRA/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=36CFNKA9C4AJX&dchild=1&keywords=o+andar+do+bebado&qid=1608582438&s=digital-text&sprefix=o+andar+do+%2Cdigital-text%2C325&sr=1-1). 

{% include image.html image="/projects/ictp-jovens/leitura_ferias.jpg" text="Eu lendo Leonard Mlodinow nas férias =)" %}

Existem oportunidades de **iniciação científica** nesse tópico caso vocês tenham gostado da atividade e querem começar uma pesquisa original com dinâmica em grafos aplicada a ecologia ou sociologia.

---
-->

:gb: This page does not have a version in English yet. If want to help me adapting/translating this page (or other contents of this webpage) to reach more easily other students, your help would be highly appreciated and acknowledged. Mail me! :)

