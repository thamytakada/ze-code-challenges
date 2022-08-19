# language: pt
# encoding: utf-8

@weather_open 
Funcionalidade: Consultar previsao do tempo
  Para obter o clima do tempo via site Weather open
  O usuario do sistema
  Deseja poder consultar temperatura de formas diferentes

  Contexto: Pesquisar clima 
    Dado que o usuario relizou consulta no site Weather Open

  @weather_open_sucesso
    Esquema do Cenário: Pesquisar previsao via coordenadas
    Quando efetuar a requisição passando as coordenadas '<latitude>','<longitude>'
    E receber como resposta o status code 200
    Entao deve ser exibida a temperatura do local 

    Exemplos:
    | latitude   | longitude   |
    | -23.09308  | -47.19251   |

  @weather_open_localização_invalida
    Esquema do Cenário: Pesquisar previsao com localização invalida
    Quando efetuar a requisição passando as coordenadas '<latitude>','<longitude>'
    Então receber como resposta o status code 400

    Exemplos:
    |latitude   | longitude  |
    | x         | x          |

  @weather_open_pais
    Cenário: Pesquisar previsao para paises
    Quando efetuar requisição para obter previsao para paises diferentes
    E receber como resposta o status code 200
    Então deve retornar dados do pais
