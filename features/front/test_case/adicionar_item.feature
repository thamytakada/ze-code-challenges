# language: pt
# encoding: UTF-8

@adiconar_item
Funcionalidade: Adicionar mercadoria a sacola

  Esquema do Cenário: Validar mercadoria adicionada com sucesso 

    Dado que usuario esteja logado no site do zé delivery
    E realizar busca de '<produtos>'
    Quando adicionar produto a sacola
    Então os produtos devem estar visiveis na sacola

Exemplos:
| produtos |
| tequila  |
