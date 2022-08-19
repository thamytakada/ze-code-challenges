# Desafio Zé 

### Sobre o Desafio

- [x] 1 - Identificar os fluxos críticos
- [x] 2 - Testar automação Web
- [ ] 3 - Testar automação mobile
- [x] 4 - Testar automação API

#
### Criterio utilizado para a priorização:
A escolha dos cenários foi feita considerando:
- Fluxos principais e insubstituíveis para realizar uma compra no Zé Delivery.
Olhando para a jornada, identifiquei os cenários que são necessários para o usuário fazer uma compra e que não exista um caminho alternativo, como por exemplo, adicionar itens a sacola. Não existe uma jornada de compra sem esse cenário e não existem formas alternativas de ser feito. 
Agora a busca, visualização do item entre outros, é possível ser feita de algumas formas. 

Obs: Para a construção dos cenários, utilizei a boa prática de focar no comportamental e não no procedural. Aqui na Provu, o chapter de QA prefire usar o procedural, eu particularmente acho que fica mais limpo e organizado o comportamental. Mas isso é relativo ao contexto da estrutura de testes de cada empresa (:

#
### Escolha da stack
- *Ruby*  - optei pela linguagem por ser uma linguagem performática e de fácil manutenção.
Com foco na simplicidade e produtividade 
Possui uma biblioteca vasta, sintaxe enxuta e de leitura natural.

- *Capybara*  -  Auxilia nas validações web, simulando como um usuário real.
Abstrai a conexão entre o browser e o código.

- *Cucumber*  - Emprega o BDD, transformando as regras de négocionem linguagem natural e viva.

- *Rspec* - Gem que realiza asserções para validar os resultados. Ajuda a validar os comportamentos esperado.

- *SitePrism* - DSL simples e semântico que facilita a criação de pageObjects que permite simular a interação do usuario com elemnentos da tela.

#

## Pré-requisitos

 Para rodar a aplicação é necessário seguir os seguintes passos:
  
```
Baixar e instalar o Ruby 2.7.2 - https://rubyinstaller.org/downloads/
Baixar, extrair o arquivo e adicionar na pasta de drivers o Chromedriver -https://chromedriver.chromium.org/downloads
```

#### obs: instalar a versão compatível do chromedriver com sua versão do Google Chrome e configurá-lo no PATH
#

## Instalar o bundle pelo terminal
```sh
gem install bundler
```

## Comandos para rodar o projeto 
Clonar o repositório e navegar até a pasta 'ze-code-challenges' 

Instalar as bibliotecas na pasta do projeto: 

```sh
bundle install
```

## Para executar os testes: 
Se deseja executar um cenário específico, passe a tag do cenário em 'TAG':
``` sh
cucumber -t @TAG
```
 Se deseja executar todos os cenários execute:
``` sh
cucumber
```
