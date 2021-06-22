# 💚 Stone Challlenge
	
## 📖 Sumário

<summary>Veja mais</summary>

1.  [O que é o projeto](https://github.com/Paulo-oRicardo/stone_challenge##O-que-%c3%a9-o-projeto)
2.  [O que faz](https://github.com/Paulo-oRicardo/stone_challenge##O-que-faz)
3.  [Como baixar e rodar o projeto](https://github.com/Paulo-oRicardo/stone_challenge##Como-baixar-e-rodar-o-projeto)
</details>

## O que é o projeto
   Este projeto é um desafio de back-end passado pela empresa [Stone](https://www.stone.com.br). Utilizando Elixir foi criado um sistema para gerenciar compras, nele são inseridos itens e dividos pela quantia de e-mails inseridos. 
   
 A linguagem proposta foi Elixir, e foi meu primeiro contato com o mesmo, para realizar o desafio consultei, [Elixir lang](https://elixir-lang.org), [Elixir School](https://elixirschool.com/en/), [Elixir Forum](https://elixirforum.com). ![Elixir Badge](https://img.shields.io/badge/Elixir-4B275F?style=for-the-badge&logo=elixir&logoColor=white)
   
## O que faz
   O desafio tem como princípio, algo como um carrinho de compras, ao inserir um item, o seu valor e quantidade, será calculado o valor final, multiplicando a quantidade pelo seu valor. Insira também emails que serão os usuarios, o valor final da lista, será dividio de acordo com o número total de emails, caso sela uma dízima infinita, umas das parcelas ficara com o valor a mais. 
   
   Ou seja se o valor total for 1 e o número de emails é qual a 3, a divisão será feita da seguinte forma:
                     
    Email 1 = 0.33
    Email 2 = 0.33
    Email 3 = 0.34
    
#### Obs: (Os valores estão em centavos, sendo 1 real igual a 100 centavos)
  
 ## Como Baixar e Rodar o Projeto
 1. 📌 Clone o projeto

```Shell
git clone https://github.com/Paulo-oRicardo/stone_challenge.git
```

2. 📌 Em seu terminal. Inicie o Erlang

```Shell
iex -S mix
```

3. 📌 Para Inserir um item

```Shell
Lists.new_item("Caneta", 4, 100)
```

4. 📌 Para inserir um email

```Shell
 Acrescente o mesmo no arquivo desafio_stone.exs ou Person.new_person("email")
```
5. 📌 Ver o resultado

```Shell
Ainda no Erlang execute o método

DesafioStone.exec
```
Ao executar esse comando será exibido este resultado:
<img src="https://github.com/Paulo-oRicardo/stone_challenge/blob/main/result.png" alt="Resultado do comando DesafioStone.exec" />

## ➕ Métodos a mais

📌 Caso queira ver apenas a lista de produtos, execute 
```Shell
  Lists.search_completed_list()
```
📌 Caso queira ver apenas o valor final final, execute 
```Shell
 Lists.final_price()
```

## 🛠 Tecnologias
   ![Elixir Badge](https://img.shields.io/badge/Elixir-4B275F?style=for-the-badge&logo=elixir&logoColor=white)
   ![Linux mint Badge](https://img.shields.io/badge/Linux_Mint-87CF3E?style=for-the-badge&logo=linux-mint&logoColor=white)
  O projeto foi feito apenas com [Elixir](https://elixir-lang.org), e no sistema operacinal Linux, especificamente no Linux mint.
 
## Autor:
 [Paulo Ricardo](https://github.com/Paulo-oRicardo)     [![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/paulo-yokoyama/)](https://www.linkedin.com/in/paulo-yokoyama/)
