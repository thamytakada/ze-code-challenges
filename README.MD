# Desafio Zé 

### Sobre o Desafio

- [x] 1 - Identificar os fluxos críticos
- [x] 2 - Testar automação Web
- [ ] 3 - Testar automação mobile
- [x] 4 - Testar automação API

#
### Criterio utilizado para a priorização:
- A escolha dos cenários foi orientada ao fluxo minimo necessario para concluir uma compra
no Zé delivery.  
Não há alternativas de fluxos para os fluxos selecionados.

#
### Escolha da stack
- *Ruby*  - optei pela linguagem por ser uma linguagem performática e de fácil manutenção.
Com foco na simplicidade e produtividade 
Possui uma biblioteca vasta, sintaxe elegante e de leitura natural.

- *Capybara*  -  Auxilia nas validações web, simulando como um usuário real.
Abstrai a conexão entre o browser e o código.

- *Cucumber*  - Emprega o BDD, transformando as regras de négocionem linguagem natural e viva.

- *Rspec* - Gem que realiza asserções para validar os resultados. Ajuda a validar os comportamentos esperado.

- *SitePrism* - DSL simples e semântico que facilita a criação de pageObjects que permite simular a interação do usuario com elemnentos da tela.

#

## Pré-requisitos

 Para rodar a aplicação é necessário seguir os seguintes passos:
  
```
Ruby 2.7.2 - https://rubyinstaller.org/downloads/
Chromedriver -https://chromedriver.chromium.org/downloads
```

#### obs: instalar a versão compatível do chromedriver com sua versão do Google Chrome e configurá-lo no PATH
#

## Instalar o bundle pelo terminal
```sh
gem install bundler
```

## Comandos para rodar o projeto 
Clonar o repositório e navegar até a pasta 'Desafio_ze' 

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
