---
layout: post
title: "Estourando a bolha:"
subtitle: como informação se espalha na sociedade
permalink: /ictp-jovens
---

Olá Jovens na Física, 

sejam muito bem-vindos e bem-vindas ao nosso projeto/oficina no **[ICTP-SAIFR Jovens na Física 2021](http://outreach.ictp-saifr.org/escolaverao/)**, onde vamos explorar conceitos em **dinâmica de opinião**, **sociofísica** e **sistemas complexos**! 

Quero agradecer de coração vocês terem topado o desafio que vai ser essa semana - se preparem para bastante **conhecimento** e venham com o **ânimo** nas alturas e a mente aberta para **curiosidade**. Acima de tudo, a gente tá aqui para se divertir! Trabalhar na física é uma eterna diversão - tem pontos altos e baixos, como qualquer profissão, mas em geral é muito divertido. E nesse ponto é a gente que faz a diversão, né? Então venham animados, mesmo que as coisas não saiam como o esperado (o que é super normal *heheh*).

Então essa semana vocês vão ter um gostinho sobre **como um físico e uma física trabalham**. Para ajudar vocês nessa empreitada (em geral o caminho é mais pedroso *risos nervosos*), eu criei essa página que vai funcionar como uma "wiki" ou um diário do projeto... vou tentar **escrever e roteirizar aqui tudo que vocês precisam saber e fazer**, e ao longo da semana nós **discutiremos o conteúdo e a prática juntos nas lives**. 

Quero que vocês se sintam muito a vontade dentro do nosso grupo, e, principalmente, sempre que vocês quiserem perguntar algo, solicitar algo, comentar algo,..., **eu estou sempre a postos para ouví-los, não hesitem**! Os melhores jeitos são via meu email pessoal - **[vitorsudbrack@gmail.com](mailto:vitorsudbrack@gmail.com)** - ou a plataforma que usarmos: Slack, Discord, Whatsapp...

A dinâmica da oficina tá prevista em **5 encontros** pela tarde, mas eu estou disponível para conversarmos a qualquer momento. As primeiras duas oficinas, acredito que serão mais expositivas, pois preciso introduzir vocês a linguagem de programação R e o conteúdo que trabalharemos. Depois que vocês pegarem o fio da meada, tenho certeza que vocês mesmos virão com idéias e melhorias ao nosso modelo. E para ajudar vocês a navegar por essa página, aqui está um sumário do conteúdo.

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

Agora vamos para um outro vídeo, de onde partirmos de 6min. Nesse segundo, ele não usa o RStudio, ele usa outra ferramenta. Porém vocês sabem usar o RStudio do vídeo anterior :blink: Basta digitar no RScript de vocês a linha de comando e apertar *CTRL+Enter* para rodar no terminal...

{% include video.html src="https://www.youtube.com/embed/pdRoIDQJ_x4?start=369" %}

Pontos importantes desse vídeo: 
* atribuir uma "string" (um nome!)
* criar um data.frame
* acessar as colunas ($) e linhas ([...]) de um data.frame
* testar uma condição com if(condição){execute}²
* fazer um loop com for(i in lista){execute}²

² Esses pontos ele passa voando no vídeo... fiquem tranquilos que a gente pode minuciar esses detalhes juntos. Mas é mais ou menos assim:
{% include image.html image="/projects/ictp-jovens/loop_for.jpeg" text="for(i in seq(0, 5)) {...}" %}

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

Por fim, cada pacote tem sua **documentação**. A documentação de um pacote é onda você encontra toda a informação sobre as funções que o pacote tem, e o que elas fazem. Vou deixar aqui as documentações desses pacotes que usaremos para vocês consultarem ao longo da semana.

<a href="https://igraph.org/r/doc/"><button class="mybutton">Documentação do <i>igraph</i></button></a>

Mas em geral a gente é cabela dura e fica tentando rodar coisas até que uma vai (ou a gente cansa haha).

{% include image.html url="https://material.curso-r.com/rbase/#pedindo-ajuda" image="/projects/ictp-jovens/reading_documentation.jpg" text="Tentando coisas aleatórias por horas ao invés de ler a documentação" %}

Não precisa ler a documentação agora, mas saibam que ela está lá e se surgir alguma dúvida vocês podem buscar exemplos e funções lá. 

## Me mandar um email de apresentação

Outra tarefa importantíssima de vocês será **escrever um email de apresentação**! Para mim é muito importante entender mais quem vocês são para eu posso organizar nossas tarefas e nosso grupo de forma que seja mais legal para vocês :)

Além das coisas básicas, como onde mora e estuda, quais os seus interesses em física, em matemática, em informática, pontos que se considera forte e que pode melhorar, experiências de trabalhar em grupo,..., lembrem também de mencionar:
* sistema operacional do computador de vocês e a informação que tive sobre ele - mémoria RAM, se é notebook ou desktop, processador,...;
* o quanto vocês conhecem de computador e se você já programou alguma vez na vida ou fez algo de robótica;
* o email que vocês usam no **GoogleDrive** - provavelmente teremos uma pasta compartilhada!

Prepara um par de parágrafos com as informações que achar mais importantes de destacar e manda pro meu email, **[vitorsudbrack@gmail.com](mailto:vitorsudbrack@gmail.com)**. Menciona também se você tem interesse em fazer iniciação científica e em quais tópicos, tanto eu quanto muito dos meus colegas podem te ajudar para além da escola.

O inverso também é importante, e **aqui no site vocês descobrem bastante sobre mim e sobre as coisas que eu trabalho e me interesso** - explorem-o. No nosso primeiro encontro a gente faz uma roda de apresentação também.

## Entender a visão geral do projeto
Com o avanço de novas tecnologias de comunicação, o **perfil de contatos e a troca de informação** entre pessoas tem sido fortemente alterado: forte presença de contatos não-locais e a ascensão de "influencers" são duas grandes características das dinâmicas sociais do momento presente. A troca de informações entre indivíduos, fundamental para qualquer sociedade, é extremamente facilitada em redes sociais, como Facebook ou Twitter. 
**Mas como isso muda a forma que a gente concorda? Você sente que vivemos numa sociedade mais polarizada? Se sim, será que a física pode ajudar a explorar quais fenômenos estão por trás dessa polarização de opiniões?**

A principal ideia da oficina é fazer a gente pensar sobre **modelagem matemática** da sociedade. Veremos que fenômenos complexos surgem na população em modelos que tem mecanismos baseados nas dinâmicas de troca de informação dos indivíduos - são os chamados **padrões emergentes**. 

Vamos construir um **diagrama de fases** para esquematizar quando observamos uma sociedade de opiniões aleatórias e quanto as ações individuais formam uma **sociedade parcimônica**. Para tanto, a gente vai usar conceitos da **teoria de grafos e redes** e da **ciência da complexidade**, que são duas ciências irmãs e importantíssimas dentro da física e das demais áreas.  

---

# Redes de contato 

Apresentação ao tópico de redes e grafos. Como representar uma rede no computador e introdução ao pacote igraph do R. 

## Introdução aos grafos e redes

Vocês provavelmente sabem o que é um **polígono** e que polígonos vivem em planos, de duas dimensões. Podemos pensar em generalizar os polígonos e pensar em **poliédros**, em três dimensões. **Grafos** são uma generalização e abstração dos poliédros, e vivem em um número arbitrário de dimensões. 

Eles podem ser pensados matematicamente como dois conjuntos: um conjunto de **vértices** que são os pontos, e um conjunto de **ligações** que são as uniões entre dois pontos. 

Grafos podem ser **direcionados** ou **não-direcionados**

Também podem ser **binários** ou **não-binários**

Para mais detalhes técnicos, sempre tem a página da [Wikipédia](https://pt.wikipedia.org/wiki/Teoria_dos_grafos). Aqui a gente vai partir para um *hands-on*, colocar a mão na massa!


**Matriz de adjacência** e **Lista de ligações**
Estruturas do tipo lista incluem a lista de adjacência que associa a cada vértice do grafo uma lista de todos os outros vértices com os quais ele tem uma aresta e a lista de incidência, que armazena para cada vértice uma lista de objetos que representam as arestas incidentes a esse vértice[8][9].

Estruturas do tipo matriz incluem a matriz de incidência, uma matriz de 0's e 1's com suas linhas representando vértices e suas colunas as arestas e a matriz de adjacência onde ambas linhas e colunas possuem vértices. Em ambos casos um 1 indica dois objetos adjacentes e 0 indica dois objetos não adjacentes.



#### História 

Para saber como a teoria dos grafos começou com um dos mais geniais matemáticos e físicos que já pisou na Terra, o Leonard Euler, assista esse vídeo do **[canal Numberphile](https://www.youtube.com/channel/UCoxcjq-8xIDTYp3uz647V5A)** (um dos canais mais legais do Youtube caso vocês não conheçam...) sobre as **Sete pontes de Königsberg**, legendadas em inglês. A página da [Wikipédia](https://pt.wikipedia.org/wiki/Sete_pontes_de_K%C3%B6nigsberg) traz também a história das pontes em português e fotos dela. 
{% include video.html src="https://www.youtube.com/embed/W18FDEA1jRQ" %}


#### Rede aleatória

A **rede aleatória é uma rede sem nenhuma estrutura**. 
Para gerar uma rede aleatória com 25 vértices e 20% de ligações distribuídas aleatoriamente pelos vértices, use
```r
random = sample_gnp(25, 0.2)
```

## Principais propriedades matemáticas

#### Vértices

A propriedade mais importante que vértices possuem é o seu **grau**, que nada mais é do que o número de vizinhos (ligações) que um vértice tem. Para obter os vizinhos e o grau de cada vértice, use (*lembre-se de trocar 'rede' pelo nome da variável que você deu para a rede*): 
```r
neighbors(rede, 1) # Lista todos of vizinhos do vértice 1
degree(rede) # Lista o grau de todos os vértices da rede
```

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

#### Ligações

A **densidade de ligações** é a razão entre o número de ligações existentes sobre o número de possíveis ligações na rede, e é calculada por 
```r
edge_density(rede)
```
Densidades de ligações próximas de 1 significam que todo vértice é vizinho de todo outro vértice. Esse é um dos parâmetros fundamentais das redes, pois ele dá uma grandeza adimensional entre o número de ligações em relação ao número de vértices. Geralmente denominamos os grafos com baixa e alta densidade de vértices como **grafos esparso e denso**, respectivamente. 

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
E o oposto de um clique é um **conjunto de vértices independentes (IVS)**, isso é, um conjunto de vértices que não tem nenhuma ligação entre eles, eles não se comunicam. O maior IVS é obtido com 
```r
largest_ivs(rede) # O maior IVS
independence.number(rede) # Tamanho do maior IVS
```

#### Rede

A **Distribuição de grau** é um histograma que mostra a fração de vértices que contém cada grau. 
```r
plot(0:max(degree(rede)), degree_distribution(rede), type = 'h', lwd=3, col ="blue", xlab="Grau", ylab="Frequência", main="Distribuição de grau") # Em escala linear
plot(0:max(degree(rede)), degree_distribution(rede), type = 'l', lwd=3, col ="red", xlab="Grau", ylab="Frequência", main="Distribuição de grau", log = "xy") # Em escala log
```

E também é possível fazer um pouco de estatística em cima da distribuição de grau:
```r
mean(degree(rede))# Grau médio da rede
sd(degree(rede))  # Desvio-padrão da distribuição de graus
max(degree(rede)) # Maior grau da rede
```

Um grafo tem uma **distância média** entre vértices, que nos diz o quão fácil é caminhar pelo vértices em média, ligando-os por suas geodésicas, e também tem um **diâmetro** que é o tamanho da maior geodésica:
```r
mean_distance(rede)
diameter(rede)
```

A **transitividade** (ou *coeficiente de clustering*) mede a probabilidade que dois vértices vizinhos de um terceiro vértice sejam vizinhos entre si. Ela esta relacionada com o número de triângulos da rede.
```r
transitivity(rede) # A transitividade média da rede
transitivity(rede, type='local') # A transitividade de cada vértice
```

A **assortatividade** da rede é uma medida da correlação entre o grau de vértices vizinhos, e por ser uma correlação assume valores no intervalo $[-1,1]$. Você pode calcular ela com a seguinte função
```r
assortativity_degree(rede)
```
Basicamente, quando a assortatividade é negativa, significa que vértices de grau alto estão ligados com vértices de grau baixo (graus anti-correlacionados). Quando a assortatividade é positiva, significa que vértices de grau alto estão ligados aos vértices de grau alto (graus correlacionados). Assortatividades próximas de zero significam ausência dessa estrutura. 
Para ver o grau médio dos vizinhos de cada grau ($knn$) e a média do grau médio dos vizinhos entre os vértices de grau k ($knnk$), use
```r
knn(rede)
plot(unlist(knn(a)[2]), xlab="Grau", ylab="Grau médio dos vizinhos", main="Assortatividade", col = "darkgreen", pch=16) # Plot de assortatividade
```

Muitas redes consistem em módulos densamente conectados entre si, mas escassamente conectados a outros módulos. Essa é a **modularidade** da rede, e tentar encontrar essas *sub-redes*, também chamadas de módulos, dentro da rede principal, é uma tarefa árdua, existem vários métodos. Um deles é o seguinte,
```r
ceb = cluster_edge_betweenness(rede) # Classifica em módulos pela conectância entre vértices
dendPlot(ceb)   # Visualizar o dendrograma de módulos
plot(ceb, rede) # Visualizar os módulos na rede
```
Um exemplo de modularidade poderia ser a rede de músicas do *Spotify*. Duas músicas dessa rede são ligadas se elas aparecem simultaneamente na mesma *playlist* de pelo menos 5000 ouvintes diferentes. Quais seriam as modularidades dessa rede? Teria o módulo de rock, o módulo de pop, o módulo de música clássica, samba, e por aí vai... Claro que pode ser que várias pessoas coloquem 'Despacito' numa playlist com um sertanejo sofrência tipo 'S de Saudade', mas isso é muito inferior ao número de playlists em que a primeira aparece com outros reggaetons e a segunda com outros sertanejos.

**Perguntas:**
a) Quantos grafos sem peso e adirecionais de 100 vértices são possíveis?
*Dica:* começe pensando quantos existem com 3 vértices, desenhe eles se preciso for. Depois, 4... e N?
Para contemplar o quão grande esse número é, compare com o [número de estrelas no universo](http://www.inpe.br/faq/index.php?pai=11#:~:text=Estima%2Dse%20que%20a%20nossa,de%2010%20sextilh%C3%B5es%20de%20estrelas.) e o [número de átomos no universo](https://pt.wikipedia.org/wiki/Universo_observ%C3%A1vel#:~:text=Conte%C3%BAdo%20em%20mat%C3%A9ria,-Representa%C3%A7%C3%A3o%20art%C3%ADstica%20do&text=Dois%20c%C3%A1lculos%20aproximados%20fornecem%20o,em%20torno%20de%201080.). E se fosse um grafo direcional?

b) Entre uma relação matemática entre o número total de ligações, o tamanho da rede e o grau médio da rede. (Depois que você a derivar, confira a resposta chamada de **[Lema do aperto de mão](https://pt.wikipedia.org/wiki/Lema_do_aperto_de_m%C3%A3o)**.)

c) Acho uma relação matemática entre o número total de triângulos, o tamanho da rede e a transitividade da rede.

d) Qual a probabilidade que uma rede aleatória (Tamanho N e % de ligação p) tenha um clique de tamanho n? Depende do tamanho da rede?

## Sociedades

A gente conheceu as redes aleatórias, aquelas que não tem nenhum estrutura. Mas a gente sabe que a nossa sociedade é fortemente estruturada e nada aleatória. Vou apresentar aqui alguns dos métodos para gerar redes estruturadas. 

#### O anel

Uma sociedade totalmente rústica seria permitir a comunicação entre vizinhos.

Para gerar um anel, use a seguinte função da biblioteca *igraph*:
```r
anel = make_ring(n) ## Gerando um anel de tamanho n
```
onde $n$ é o número de vértices no anel. Para plotar um anel, use o *layout* circular
```r
plot(anel, vertex.size=9, layout=layout_in_circle(anel))
```
onde *anel* é o nome da variável que você salvou o grafo anelar. 

#### O *pequeno mundo*

Para adicionar ou ligações entre dois vértices, use os operadores de some e subtração junto com a função *edge* que diz que o objeto sendo adicionado ou subtraído é uma ligação. Por exemplo,
```r
anel = anel + edge(25,40) #Adiciona uma ligação entre o nó 25 e 40
anel = anel - edge(1,2)   #Remove a ligação entre o nó 1 e 2
```
e assim você pode adicionar não-localidades. 

Uma **rede *pequeno mundo*** tem muito contatos locais, entre vizinhos, junto com alguns poucos **contatos aleatórios não-locais**. Ela é dita *[pequeno mundo](https://pt.wikipedia.org/wiki/Redes_de_pequeno_mundo) (small world network)*, pois ela representa uma rede de contato em que a distância entre duas pessoas é pequena devido aos 'atalhos' dos contatos não lineares.

Para gerar uma rede pequeno mundo
```r
sample_smallworld(1, 25, 1, 0.05) # Um anel com 5% das ligações aleatórias
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

Ou seja, quando $\alpha$ vale 1, então um vertex com o dobro de ligações tem o dobro de probabilidade de receber uma nova ligação. Se $\alpha$ valesse 2, então teria 4x maior probabilidade de receber uma ligação. Se $\alpha$ for 0, então todos os vértices têm a mesma probabilidade de receber uma ligação, e eles diferem apenas pelo 'tempo' em que foram adicionados na rede ($\alpha=0$ é chamada **rede exponencial**). Portanto, quanto maior o $\alpha$, mais **desigual e heterogênia** a rede se torna, sendo monopolizada por poucos vértices. 

Um dos primeiros trabalhos a propor esse mecanismo para explicar a estrutura de várias redes reais, foi o trabalho liderado pelo Barabasi e Albert, por isso esse modelo de rede é chamado de  *[Barabási-Albert model](https://pt.wikipedia.org/wiki/Barab%C3%A1si%E2%80%93Albert_model)*. No paper original de 1999 abaixo, eles mostram esse mecanismo por trás da rede de citação de autores (e.g. quanto mais citações um cientista tem, mais provável que um artigo cite ele), rede WWW e redes elétricas.

{% include cite.html title="Emergence of scaling in random networks" author="Barábasi, A.L. & Albert, R." journal="Science" year="1999" url="https://doi.org/10.1126/science.286.5439.509" %}

Alias, toda a **[homepage do Barabasi](https://barabasi.com/)** é muito legal - e ele tem uns livros incríveis sobre redes.

Para gerar redes com adesão preferencial, utlize o seguinte comando do pacote *igraph*:
```r
sample_pa(n, power = 1, m = NULL, directed = TRUE)
```
onde $n$ é o tamanho da rede (número de vértices), $power$ é o expoente $\alpha$ da adesão preferencial ($0$ é uma rede aleatória, $1$ é adesão preferencial linear,...), $m$ é o número de ligações que cada nó é adicionado na rede (o produto $nm$ é o número de ligações na rede), e $directed$ é TRUE para grafos direcionados e FALSE para grafos sem deireção. 


{% include image.html image="/projects/ictp-jovens/grafos_2.png" text="Grafos com adesão preferencial" %}

E por curiosidade, há também alguns sites, por exemplo [MovieGalaxies](https://moviegalaxies.com/), que fazem redes sociais a partir de **personagens de filmes**. Existem alguns artigos analisando as *character networks*, redes de personagens - por exemplo com [Senhor dos Anéis](https://arxiv.org/abs/1606.02610) e [Harry Potter e Crepúsculo](https://arxiv.org/abs/1608.00646).  

**Perguntas:**

a) Como vocês associariam as características de redes sociais e de contato antigas e as recentes com as propriedades das redes apresentadas?

b) Quais seriam as propriedades matemáticas de vértices que representariam os *influencers*?

c) Quais propriedades dos grafos vocês esperam que sejam maiores ou menores em cada um desses modelos de grafos?

---

# Da estrutura para dinâmica

As redes sociais que discutimos nos fornecem informação sobre a estrutura da rede, isto é, as características das interações fixas no tempo. Agora queremos adicionar uma **dinâmica** para completar o nosso modelo de troca de informações e opiniões, essa é a parte que dita a **evolução temporal** o modelo, dita o que acontece a medida que o tempo passa. 

## Modelando Opinião 

A primeira grande simplificação que vamos fazer é trabalhar com opiniões binárias: sim ou não, favorável ou contrário, mais ou menos, bolacha ou biscoito, feijão por cima do arroz ou arroz por cima do feijão. 

{% include image.html image="/projects/ictp-jovens/opiniao_binaria.jpeg" text="Exemplos de opiniões binárias polarizadas (esq.) e misturada (dir.)" %}

Para abstrair, vamos representar as opiniões como $0$ e $1$. 

## Troca de opinião

Agora que temos uma rede de contatos, vamos colocar uma dinâmica de troca de opinião. Para isso, precisamos de um **algoritmo** de troca de opinião, isto é, uma rotina/receita que avança o sistema no tempo. Por exemplo, para cada passo de tempo:

* Escolha um vertex aleatório na rede.
* Entra um vizinho aleatório desse vertex.
* Se ambos compartilham a mesma opinião, nada acontece. Se as opiniões são conflitantes, então com probabilidade $\tau$ o vertex central copia a opinião de seu vizinho. 

**Pergunta:** Quando o primeiro vertex escolhido copia a opinião de um vizinho, a ordem é chamada de *pull*. Se, ao contrário, o vizinho copia a opinião do primeiro vertex escolhido, então a ordem é de *push*. Existe diferença entre o resultado via *pull* ou *push*?

## Diagramas de fase

É necessário ter um **parâmetro de ordem**.


Existem dois grandes grupos de transições de fases - as de primeira e de segunda ordem. Transições de primeira ordem são descontínuas, um salto, em função do parametro do modelo. O valor do parâmetro que ocorre essa troca de fase é dito **valor crítico** do parâmetro para a transição, geralmente representado por um $^*$. No outro grande grupo o sistema vai continuamente de uma fase para outra, porém a derivada da curva não é contínua. O ponto em que a derivada não é contínua é denominado valor crítico.

{% include image.html image="/projects/ictp-jovens/transicao.png" text="As duas grandes classes de transição de fase" %}

Vale ressaltar que essas descontinuidades acontecem apenas no **limite termodinâmico**, que é quando o número de vértices é infinito. Sabemos que no computador a gente não chega nem perto desse número, então precisamos de outras técnicas para averiguar o tipo de transição com um número finito de vértices. A mais comum é o *scaling* (escalonamento - mas não o de matriz!), em que a gente aumenta a ordem de grandeza do número de vértices e verifica a tendência das curvas, e assim extrapolamos para um número infinito de vértices. Muitos físicos e matemáticos trabalham para estudar essas transições do ponto de vista analítico, usando teoremas e limites que possam indicar a convergência para uma transição de fase, porém nós nos restringiremos aos métodos computacionais.

**Perguntas:**
Vamos fixar as redes em 1024 vértices e 2048 ligações. 
* Para quais parâmetros do sistema a rede de contatos atinge consenso?
* Como o aumento da 'teimosia' e do número médio de contatos na rede influencia o estado de consenso?
* Qual o valor de teimosia crítico e de densidade crítica de contatos?
* É uma transição de primeiro ou de segunda ordem? Lembra-se do *limite termodinâmico*.
* Caso haja consenso eventualmente, quanto tempo é necessário para rede atingir consenso?

---

# Mundo real, problemas reais

Hoje é dia de adicionar problemáticas no nosso modelo a fim de deixá-lo mais parecido com a realidade, e os padrões que observamos nele mais parecidos com os padrões que a gente comentou que observa na sociedade.

Aqui é importante lembrar que **todo modelo é uma aproximação**, não existe um modelo que seja perfeito ou que não possa ser melhorado. Tem uma frase famosa de um estatístico que diz

{% include quote.html text="Essencialmente, todos os modelos estão errados, mas alguns são úteis." author="George Box"%}

A própria palavra **modelo** já carrega um tom de idealização e de simplificação. 

No nosso modelo, podemos pensar sobre a introdução de alguns dos novos fatores abaixo: 

* **Peso nas conexões** pois a gente não troca informação com a mesma intensidade com todo mundo;
* **Espectro de opiniões**, i.e. as opiniões não precisam ser binárias, tem pessoas com opiniões fortes, outros mais cautelosos;
* **Efeito de 'unfriend'**: não trocar informação com amigos que tenham uma opinião contrária a sua - ou até mesmo substituir amigos de opinião contrária por pessoas com opinião semelhante;
* **Fatores externos** em direção à uma das opiniões, como por exemplo a mídia, podem fazer as transções $0\to 1$ e $1\to 0$ não necessariamente equiprováveis;
* **Influência assimétrica**, ou seja, você consome muito mais informação do que você informa, portanto as relações de troca de informação não são necessariamente simétricas;
* **Efeito das massas**, e.g. as pessoas 'maria-vai-com-as-outras' que seguem a opinião da maioria;
* **Efeito de opinião duradoura**, i.e. uma pessoa que acaba de trocar de opinião é mais provável que a troque também, enquanto uma pessoa que mantém sua opinião há longos tempos tem uma menor probabilidade de trocar de opinião. 

**Perguntas:**
* Qual desses ingredientes eles acreditam ser(em) o(s) mais fundamental(is) em nossas interações para adicionar ao modelo básico trabalho?
* Implemente um dos efeitos que considera fundamental e repita as análises anteriores sobre o estado estacionário: como o efeito escolhido altera as fases do modelo básico? 
* Há o surgimento de novas fases que não observamos antes?


---

# Universalidade

Discussão da implementação dos efeitos escolhidos pelos alunos. A proposta agora é perceber que, através do uso de matemática e de redes complexas, é possível unificar problemas em um único framework. Discutir como poderíamos interpretar nossos resultados em termos de campo magnético spin, ao invés de opiniões. Como interpretação em termos de evolução, onde a opinião é vista como um fenótipo/traço da população e o processo de polarização é visto como especiação. A ideia desse dia é os alunos explorarem a generalidade dos resultados que eles encontraram nos últimos quatro dias e pensar na "equivalência matemática" dos diversos processos. Conceito fundamental do dia: sistemas complexos, como dinâmica individual gera padrões coletivos. 


Preparem uma apresentção bem legal amanhã - dormir é para os fracos, os legais viram a noite programando (*hahah*)! 

Vou deixar aqui algumas **dicas** para guiar vocês na contrução da apresentação de amanhã, mas não hesitem em me mandar quaisquer dúvidas:
* A apresentação é para ser **em torno de 20 minutos**, isso sigfinica que são necessários **em torno de 15 slides**. Um truque interessante é colocar slides 'escondidos' no final para ajudar vocês nas respostas caso alguém pergunte sobre algo que não estava na apresentação. 
* Tenham em mente que uma apresentação de projeto científico tem uma **estrutura** de introdução (justificativa + problema), métodos, resultados, discussão, conclusão, agradecimentos (em especial lembrem-se de agradecer aos organizadores da escola) e um último slide de referências. 
* Lembrem-se de colocar **os créditos e fontes** ao usar citações ou imagens de outros autores. 
* Sejam **criativos e bem-humorados**... cada apresentador tem seu estilo, mas não pensem que uma apresentação científica é necessariamente vinculada à uma apresentação séria e rígida. 
* Ensaiem antes - *quem sabe faz ao vivo* em geral não é uma boa idéia.

{% include image.html image="/projects/ictp-jovens/postergar.jpeg" text="Prazo do trabalho: 00:00<br>Eu enviando o trabalho às 23:59" %}

---

# Links, referências & conteúdo extra

Vou escrever aqui uma série de links que podem ajudar vocês no processo de construção do conhecimento, aprofundamento das questões tangenciais que a gente vai tratar, e engrandecer a apresentação final de vocês (lembrando que ao longo do próprio texto já tem várias referências interessantes!).

* **Livro** *[Linked: How Everything Is Connected to Everything Else and What It Means for Business, Science, and Everyday Life](https://www.amazon.com.br/Linked-Everything-Connected-Business-Everyday-ebook/dp/B06XC9JM6Y/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=linked&qid=1608582248&sr=8-1)* do Barábasi. 
* **Livro** *[Bursts: The Hidden Patterns Behind Everything We Do, from Your E-mail to Bloody Crusades](https://www.amazon.com.br/Bursts-Patterns-Everything-mail-Crusades-ebook/dp/B003NX7NBU/ref=pd_sbs_4?pd_rd_w=uENqo&pf_rd_p=dba274c4-9919-41b0-a2f8-76fb24466c03&pf_rd_r=9HBR8Q6VQAQ0RWCVZ40G&pd_rd_r=531ff5b1-82b5-49a8-b122-d0a36f17b533&pd_rd_wg=CJIR7&pd_rd_i=B003NX7NBU&psc=1)* do Barábasi.
* **Livro** *[Six Degrees: The Science of a Connected Age](https://www.amazon.com.br/Six-Degrees-Science-Connected-English-ebook/dp/B00256Z3B8/ref=pd_sbs_3?pd_rd_w=uENqo&pf_rd_p=dba274c4-9919-41b0-a2f8-76fb24466c03&pf_rd_r=9HBR8Q6VQAQ0RWCVZ40G&pd_rd_r=531ff5b1-82b5-49a8-b122-d0a36f17b533&pd_rd_wg=CJIR7&pd_rd_i=B00256Z3B8&psc=1)* do DJ Watts.
* Absolutamente qualquer livro do **Leonard Mlodinow**, em especial [O andar do bêbado: Como acaso determina nossas vidas](https://www.amazon.com.br/andar-b%C3%AAbado-acaso-determina-nossas-ebook/dp/B008FPZPRA/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=36CFNKA9C4AJX&dchild=1&keywords=o+andar+do+bebado&qid=1608582438&s=digital-text&sprefix=o+andar+do+%2Cdigital-text%2C325&sr=1-1). 

{% include image.html image="/projects/ictp-jovens/leitura_ferias.jpg" text="Eu lendo Leonard Mlodinow nas férias =)" %}
