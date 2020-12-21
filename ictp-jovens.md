---
layout: post
title: ICTP-SAIFR Jovens na Física
permalink: /ictp-jovens/
---

## Estourando a bolha: como informação se espalha na sociedade


Olás, 

sejam muito bem-vindos e bem-vindas ao nosso projeto/oficina sobre **dinâmica de opinião**, sociofísica e sistemas complexos! 

Quero agradecer de coração vocês terem topado o desafio que vai ser essa semana - se preparem para bastante **conhecimento** e venham com o **ânimo** nas alturas e a mente aberta para **curiosidade**.Acima de tudo, a gente tá aqui para se divertir! Trabalhar na física é uma eterna diversão - tem pontos altos e baixos, como qualquer profissão, mas em geral é muito divertido. E nesse ponto é a gente que faz a diversão, né? Então venham animados, mesmo que as coisas não saiam como o esperado (o que é super normal *heheh*).

Então essa semana vocês vão ter um gostinho sobre **como um físico e uma física trabalham**. Para ajudar vocês nessa empreitada (em geral o caminho é mais pedroso *risos nervosos*), eu criei essa página que vai funcionar como uma "wiki" ou um diário do projeto... vou tentar **escrever e roterizar aqui tudo que vocês precisam saber e fazer**, e ao longo da semana nós **discutiremos o conteúdo e a prática juntos nas lives**. 

Quero que vocês se sintam muito a vontade dentro do nosso grupo, e, principalmente, sempre que vocês quiserem perguntar algo, solicitar algo, comentar algo,..., **eu estou sempre a postos para ouví-los, não hesitem**! Os melhores jeitos são via meu email pessoal:
<a href="mailto:vitorsudbrack@gmail.com"><button class="mybutton">vitorsudbrack@gmail.com</button></a>

ou a plataforma que usarmos: Slack, Discord, Whatsapp...

A dinâmica da oficina tá previsita em **5 encontros** pela tarde, mas eu estou disponível para conversarmos a qualquer momento. As primeiras duas oficinas, acredito que serão mais expositivas, pois preciso introduzir vocês a linguagem de programação R e o conteúdo que trabalharemos. Depois que vocês pegarem o fio da meada, tenho certeza que vocês mesmos virão com idéias e melhorias ao nosso modelo. 

---

# Preâmbulo e aquecimento

Primeiro dia é o aquecimento... algumas tarefas e leituras para gente se conhecer, vocês conhecerem o tópico, baixarem os programas e pacotes, e programarem. Enfim, aqui vamos deixar as coisas prontas para gente colocar a mão na massa!

## Instalar o R e o Rstudio

Você sabe o que é uma linguagem de programação? O porque é importante saber programar? Se você nunca teve contato com esse universo, já aviso: e é um caminho sem volta!

{% include image.html image="/projects/ictp-jovens/vicio_de_programar.jpeg" text="Eu, às 3 da manhã, implorando para eu mesmo parar de programar e dormir" %}

Uma discussão interessante sobre o que é uma linguagem de programação, porque é legal a gente saber programar, quais as vantagens de usar o R e o RStudio que usaremos ao longo da semana, está nesse vídeo:
{% include video.html src="https://www.youtube.com/embed/tfPsmDzS74c" %}

Minha prosposta em ensinar programação para vocês é ser apenas um começo. Quando vocês souberam encaixar mais funções e algoritmos, o que vocês poderão fazer é limitado apenas pela imaginação. A gente costuma brincar que a pergunta não é *se* dá para programar algo, mas sim *como* se programa algo.

{% include image.html image="/projects/ictp-jovens/programming_is_easy.jpeg" text="Alguém: programar é fácil<br>Eu: cai fora!" %}

Existem várias técnica muito famosas hoje em dia, uma que ele menciona no vídeo de cima é o *Machine Learning*, que significa ensinar o computador a excutar uma tarefa ou tomar uma decisão, por exemplo. A gente vi passar longe disso, vamos ficar no básico da programação, mas vamos tentar solidificar os conhecimentos para que o caminho até técnicas mais sofisticadas (que estão em **todas** as ciências) seja o mais brando possível. E o R é uma linguagem com um esforço-benefício excelente. Aliás, esse site aqui é feito em R também. 

Antes de mais nada a gente tem que instalar tanto a **linguagem de programação R** que vamos usar, quanto **RStudio** que é uma interfácie gráfica para facilitar o uso da linguagem. Para isso não tem mistério, é só seguir todos os passos que estõ bem desmiuçados nesse vídeo:
{% include video.html src="https://www.youtube.com/embed/PWMqxKWHlz4" %}

Agora que temos os programas, vamos nos familiarizar com o R e o RStudio. Aprender as nossas primeiras ferramentas. Assistam esse vídeo aqui de baixo (a partir de 3min20s - antes disse ele mostra o download que vocês já fizeram no outro vídeo mais detalhado...) e **reproduzam** as coisas que ele vai mostrando... então é realmente abrir o RStudio do lado e digitar o que ele mostra, conferir o que o programa retorna, explorar coisas parecidas, etc...
{% include video.html src="https://www.youtube.com/embed/4j_rtffftzQ?start=200" %}

Ele também vai guiar vocês por todo o RStudio, as várias janelas e as várias abas. A gente vai trabalhar com a forma de arquivos (RScript que ele mostra em 5min28s), pois assim a gente vai salvando nosso processo (é como se fosse um caderno) e excecutando as linhas com *CTRL+Enter*.

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
{% include image.html image="/projects/ictp-jovens/loop_for.jpeg" text="for(i in seq(0, 5) {...}" %}

É provável que vocês se sintam sobrecarregados de tanta informação! Aprender a programar é um processo longo, na faculdade é quase um semestre, e vocês estão aprendendo o básico em um dia. Então perguntem, pratiquem, mas não se assustem. Aos poucos vocês vão naturalizando esse conhecimento também. 

## Instalar o pacote *igraph* no R

Pacotes são conjuntos de funções que pesquisadores desenvolveram e disponibilizaram para outros pesquisadores e cientistas usarem. O lema da programação é **dividir para conquistar**, isso significa que a gente pode quebrar problemas grandes em problemas menores, e juntar a solução dos menores... 

Agora a gente vai instalar o pacote que usaremos para trabalhar e visualizar com **grafos**. Execute essa linha no terminal do RStudio de vocês (normal demorar um pouquinho para instalar tudo):
```
install.packages('igraph', dependencies = TRUE)
```
Nós colocamos esse argumento da função chamado 'dependencies' como verdadeiro, pois assim ele instala todos os pacotes que esses pacotes precisam para executar juntos (sim, pacotes usam pacotes... dividir para conquistar!). Antes de usar as funções de um pacote, a gente precisa carregar ele com a função *library()*, digite
```
library(igraph)
```

Por fim, cada pacote tem sua **documentação**. A documentação de um pacote é onda você encontra toda a informação sobre as funções que o pacote tem, e o que elas fazem. Vou deixar aqui as documentações desses pacotes que usaremos para vocês consultarem ao longo da semana.

<a href="https://igraph.org/r/"><button class="mybutton">Documentação do <i>igraph</i></button></a>

Mas em geral a gente é cabela dura e fica tentando rodar coisas até que uma vai (ou a gente cansa haha).

{% include image.html url="https://material.curso-r.com/rbase/#pedindo-ajuda" image="/projects/ictp-jovens/reading_documentation.jpg" text="Tentando coisas aleatórias por horas ao invés de ler a documentação" %}

Não precisa ler a documentação agora, mas saibam que ela está lá e se surgir alguma dúvida vocês podem buscar exemplos e funções lá. 

## Me mandar um email de apresentação

Outra tarefa impotantíssima de vocês será **escrever um email de apresentação**! Para mim é muito importante entender mais quem vocês são para eu posso organizar nossas tarefas e nosso grupo de forma que seja mais legal para vocês :)

Além das coisas básicas, como onde mora e estuda, quais os seus interesses em física, em matemática, em informática, pontos que se considera forte e que pode melhorar, experiências de trabalhar em grupo,..., lembrem também de mencionar:
* sistema operacional do computador de vocês;
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

# Dia 2 - Redes de contato 

Apresentação ao tópico de redes e grafos. Discussão sobre as características de redes de contato "antigas" e as recentes. Como modelar os influencers, os contatos não-locais e o aumento da conectividade? Como representar uma rede no computador e introdução ao pacote igraph do R. 

## Teoria

#### O que são grafos e redes?


Para saber como a teoria dos grafos começou com o Leonard Euler, assita esse vídeo do **[canal Numberphile](https://www.youtube.com/channel/UCoxcjq-8xIDTYp3uz647V5A)** (um dos canais mais legais do Youtube caso vocês não conheçam...).
{% include video.html src="https://www.youtube.com/embed/W18FDEA1jRQ" %}

#### Como representar grafos no computador?


**Pergunta:**
Quantos grafos sem peso e adirecionais de 100 vértices são possíveis?
*Dica:* começe pensando quantos existem com 3 vértices, desenhe eles se preciso for. Depois, 4... e N?
Para contemplar o quão grande esse número é, compare com o [número de estrelas no universo](http://www.inpe.br/faq/index.php?pai=11#:~:text=Estima%2Dse%20que%20a%20nossa,de%2010%20sextilh%C3%B5es%20de%20estrelas.) e o [número de átomos no universo](https://pt.wikipedia.org/wiki/Universo_observ%C3%A1vel#:~:text=Conte%C3%BAdo%20em%20mat%C3%A9ria,-Representa%C3%A7%C3%A3o%20art%C3%ADstica%20do&text=Dois%20c%C3%A1lculos%20aproximados%20fornecem%20o,em%20torno%20de%201080.).
E se fosse um grafo direcional?

## Sociedades

#### Os vizinhos 

#### O rico fica mais rico

Hoje em dia, com o avanço das redes sociais, quem são as pessoas que você segue? Os algoritmos dessas redes vivem sugerindo nomes para você seguir. Concorda que quanto mais seguidores uma pessoa tem, maior a probabilidade desses algoritmos sugerirem essa pessoa? 

Esse fenômeno é chamado **adesão preferencial**, isso significa que quanto mais vizinhos vocês tem, maior a probabilidade de você receber novos vizinhos. Esse mecanismo ficou muito famoso pela frase *the rich get richer* - o rico fica mais rico - uma vez que quanto mais dinheiro você tem, mais fácil é ganhar dinheiro (e por isso a gente tem que lutar por programas de distribuição de renda e combate a desigualdade, porque naturalmente ela só aumenta...). 

Matematicamente, a probabilidade de receber uma nova ligação $P_i$ deve ser proporcional ao grau do vertex $k_i$:

$$P_i \propto k_i^\alpha$$

Ou seja, quando $\alpha$ vale 1, então um vertex com o dobro de ligações tem o dobro de probabilidade de receber uma nova ligação. Se $\alpha$ valesse 2, então teria 4x maior probabilidade de receber uma ligação. Se $\alpha$ for 0, então todos os novos tem a mesma probabilidade de receber uma ligação (rede aleatória). Portanto, variando $\alpha$ entre 0 e 2, temos uma **rede uniforme** até uma **rede extremamente desigual**, monopolizada por poucos vértices. 

Um dos primeiros trabalhos a propor esse mecanismo para explicar a estrutura de várias redes reais, foi o trabalho liderado pelo Barabasi e Albert, por isso esse modelo de rede é chamado de  *[Barabási-Albert model](https://pt.wikipedia.org/wiki/Barab%C3%A1si%E2%80%93Albert_model)*. No paper original de 1999 abaixo, eles mostram esse mecanismo por trás da rede de citação de autores (e.g. quanto mais citações um cientista tem, mais provável que um artigo cite ele), rede WWW e redes elétricas.

{% include cite.html title="Emergence of scaling in random networks" author="Barábasi, A.L. & Albert, R." journal="Science" year="1999" url="https://doi.org/10.1126/science.286.5439.509" %}

Alias, toda a **[homepage do Barabasi](https://barabasi.com/)** é muito legal - e ele tem uns livros incríveis sobre redes.

```
sample_pa(n, power = 1, m = NULL, directed = TRUE)
```

Para saber mais sobre porque 20% das pessoas mais seguidas nas redes sociais tem 80% das interações, curtam esse vídeo do **[VSauce](https://www.youtube.com/channel/UC6nSFpj9HTCZ5t-N3Rm3-HA)** sobre o Princípio de Pareto.
{% include video.html src="https://www.youtube.com/embed/fCn8zs912OE" %}


---

# Dia 3 - Dinâmica da opinião


Vamos trabalhar com opiniões binárias: sim ou não, favorável ou contrário, mais ou menos, bolacha ou biscoito, feijão por cima do arroz ou arroz por cima do feijão. Para simplificar, vamos denominar 0 e 1. 

#### Diagramas de fase

É necessário ter um **parâmetro de ordem**.


Existem dois grandes grupos de transições de fases - as de primeira e de segunda ordem. Transições de primeira ordem são descontínuas, um salto, em função do parametro do modelo. O valor do parâmetro que ocorre essa troca de fase é dito **valor crítico** do parâmetro para a transição, geralmente representado por um $^*$. No outro grande grupo o sistema vai continuamente de uma fase para outra, porém a derivada da curva não é contínua. O ponto em que a derivada não é contínua é denominado valor crítico.

{% include image.html image="/projects/ictp-jovens/transicao.png" text="As duas grandes classes de transição de fase" %}

**Pergunta:**
* Para quais parâmetros do sistema a rede de contatos atinge consenso?
* Como o aumento da 'teimosia' e do número médio de contatos na rede influencia o estado de consenso?
* Qual o valor de teimosia crítico e de densidade crítica de contatos?
* É uma transição de primeiro ou de segunda ordem? Lembra-se do *limite termodinâmico*.
* Caso haja consenso eventualmente, quanto tempo é necessário para rede atingir consenso?
---

# Dia 4 - Mundo real, problemas reais

Os alunos serão convidados a pensar sobre a introdução de novos fatores na rede de informações: 

*peso nas conexões,
*espectro de opiniões,
*efeito de 'unfriend',
*duas opiniões correlacionadas,
*uma 'opinião externa',
*modularidade na rede,
*influência assimétrica,
*efeito das massas,
*opinião duradoura,

A partir da discussão os alunos devem escolher qual desses ingredientes eles acreditam ser(em) o(s) mais fundamental(is) em nossas interações para adicionar ao modelo básico trabalho. Coletamos propostas de como adicionar o efeito desejado na rede e/ou na dinâmica, e repetiremos as análises anteriores sobre o estado estacionário ser consenso ou polarização: como o efeito escolhido altera as fases do modelo básico? 


---

# Dia 5 - Universalidade

Discussão da implementação dos efeitos escolhidos pelos alunos. A proposta agora é perceber que, através do uso de matemática e de redes complexas, é possível unificar problemas em um único framework. Discutir como poderíamos interpretar nossos resultados em termos de campo magnético spin, ao invés de opiniões. Como interpretação em termos de evolução, onde a opinião é vista como um fenótipo/traço da população e o processo de polarização é visto como especiação. A ideia desse dia é os alunos explorarem a generalidade dos resultados que eles encontraram nos últimos quatro dias e pensar na "equivalência matemática" dos diversos processos. Conceito fundamental do dia: sistemas complexos, como dinâmica individual gera padrões coletivos. 


Preparem uma apresentção bem legal amanhã - dormir é para os fracos, os legais viram a noite programando! 

{% include image.html image="/projects/ictp-jovens/postergar.jpeg" text="Prazo do trabalho: 5:30<br>Eu enviando o trabalho às 5:29" %}

---

# Links, referências & conteúdo extra

Vou escrever aqui uma série de links que podem ajudar vocês no processo de construção do conhecimento, aprofundamento das questões tangenciais que a gente vai tratar, e engrandecer a apresentação final de vocês (lembrando que ao longo do próprio texto já tem várias referências interessantes!).

* **Livro** *[Linked: How Everything Is Connected to Everything Else and What It Means for Business, Science, and Everyday Life](https://www.amazon.com.br/Linked-Everything-Connected-Business-Everyday-ebook/dp/B06XC9JM6Y/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=linked&qid=1608582248&sr=8-1)* do Barábasi. 
* **Livro** *[Bursts: The Hidden Patterns Behind Everything We Do, from Your E-mail to Bloody Crusades](https://www.amazon.com.br/Bursts-Patterns-Everything-mail-Crusades-ebook/dp/B003NX7NBU/ref=pd_sbs_4?pd_rd_w=uENqo&pf_rd_p=dba274c4-9919-41b0-a2f8-76fb24466c03&pf_rd_r=9HBR8Q6VQAQ0RWCVZ40G&pd_rd_r=531ff5b1-82b5-49a8-b122-d0a36f17b533&pd_rd_wg=CJIR7&pd_rd_i=B003NX7NBU&psc=1)* do Barábasi.
* **Livro** *[Six Degrees: The Science of a Connected Age](https://www.amazon.com.br/Six-Degrees-Science-Connected-English-ebook/dp/B00256Z3B8/ref=pd_sbs_3?pd_rd_w=uENqo&pf_rd_p=dba274c4-9919-41b0-a2f8-76fb24466c03&pf_rd_r=9HBR8Q6VQAQ0RWCVZ40G&pd_rd_r=531ff5b1-82b5-49a8-b122-d0a36f17b533&pd_rd_wg=CJIR7&pd_rd_i=B00256Z3B8&psc=1)* do DJ Watts.
* Absolutamente qualquer livro do **Leonard Mlodinow**, em especial [O andar do bêbado: Como acaso determina nossas vidas](https://www.amazon.com.br/andar-b%C3%AAbado-acaso-determina-nossas-ebook/dp/B008FPZPRA/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=36CFNKA9C4AJX&dchild=1&keywords=o+andar+do+bebado&qid=1608582438&s=digital-text&sprefix=o+andar+do+%2Cdigital-text%2C325&sr=1-1). 