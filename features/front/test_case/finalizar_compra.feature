# language: pt
# encoding: UTF-8

@finalizar_compra
Funcionalidade: Finalizar compra

  Cenário: Compra de produtos selecionados

    Dado que usuario esteja logado no site do zé delivery
    Quando acessar sacola com produtos selecionados 
    Então é possível finalizar compra com sucesso

