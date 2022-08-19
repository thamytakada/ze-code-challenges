# language: pt
# encoding: UTF-8

@selecionar_endereco 
Funcionalidade: Endereço de entrega

  Cenário: Alterar endereço e verificar disponibilidade de entrega

    Dado que usuario esteja logado no site do zé delivery
    Quando efetuar alteração de endereço
    Então deve retornar produtos disponiveis na localização

