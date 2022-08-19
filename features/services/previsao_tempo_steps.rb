# frozen_string_literal: true

include Services

Dado('que o usuario relizou consulta no site Weather Open') do
  previsao_tempo_sv.class.base_uri
end

Quando('efetuar a requisição passando as coordenadas {string},{string}') do |latitude, longitude|
  @response = previsao_tempo_sv.get_coordenadas(latitude, longitude)
end

E('receber como resposta o status code {int}') do |status_code|
  expect(@response.code).to eq(status_code)
  p "status code: #{@response.code}"
end

Entao('deve ser exibida a temperatura do local') do
  expect(@response['main']['temp_min']).not_to be_nil
  expect(@response['main']['temp_max']).not_to be_nil
end

Quando('efetuar requisição para obter previsao para paises diferentes') do
  @response = previsao_tempo_sv.get_via_cep
end

E('deve retornar dados do pais') do
  expect(@response['name']).not_to be_nil
  p "Pais pesquisado: #{@response['name']}"
end
