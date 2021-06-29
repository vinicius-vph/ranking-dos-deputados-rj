# Ranking dos gastos dos Deputados

## Descrição do desafio

Você já ouviu falar da CEAP? A Cota para o Exercício da Atividade Parlamentar, custeia as despesas do mandato, como passagens aéreas e conta de celular. Algumas são reembolsadas, como as com os Correios, e outras são pagas por débito automático, como a compra de passagens. Nos casos de reembolso, os deputados têm três meses para apresentar os recibos. O valor mensal não utilizado fica acumulado ao longo do ano. Por esse motivo, em alguns meses o valor gasto pode ser maior que a média mensal. (Fonte: [Portal da Câmara dos Deputados](https://www2.camara.leg.br/transparencia/acesso-a-informacao/copy_of_perguntas-frequentes/cota-para-o-exercicio-da-atividade-parlamentar)). Através do portal da transparência, nós temos acesso a essas despesas e podemos saber como e onde os políticos estão gastando.

## Base de dados do projeto

- [Fonte de dados (pegar o referente ao ano 2020 em formato CSV)](https://dadosabertos.camara.leg.br/swagger/api.html#staticfile)
- [Explicação dos campos do arquivo CSV](https://www2.camara.leg.br/transparencia/cota-para-exercicio-da-atividade-parlamentar/explicacoes-sobre-o-formato-dos-arquivos-xml)

<br>

## Para rodar o projeto é necessário ter:

<table>
    <tr>
        <td>Ferramenta</td>
        <td>Versão</td>
    </tr>
    <tr>
        <td>Ruby</td>
        <td>2.6.5</td>
    </tr>
    <tr>
        <td>Rails</td>
        <td>6.0.3</td>
    </tr>
</table>

<table>
    <tr>
        <td>Banco de dados</td>
        <td>Versão</td>
    </tr>
    <tr>
        <td>Sqlite3</td>
        <td>1.4</td>
    </tr>
</table>

<br>

<p>É necessário também ter uma chave ssh válida, você pode obter mais informações <a href="https://docs.github.com/pt/github/authenticating-to-github/connecting-to-github-with-ssh">Aqui</a></p>
</br>
<br>
<hr>

## Para utilizar o projeto siga os passos abaixo: 


#### Clone o repositório
```
$ git@github.com:vinicius-vph/ranking-dos-deputados-rj.git
```

#### Acesse a pasta do projeto
```
$ cd ranking-dos-deputados-rj
```

#### Instale as dependencias do ruby e do rails  
```
$ bundle install
```

#### Instale as dependencias do javascript 
```
$ yarn
```

#### Se necessário crie as tabelas manualmente
```
$ rails db:migrate
```

<br>

#### Rode o projeto localmente
```
$ rails s
```
Acesse o endereço  <a href="http://localhost:3000">http://localhost:3000</a>
