# frozen_string_literal: true

include Pages

Dado('que usuario acesse o site do zé delivery') do
  cadastro_pg.load
end

Quando('preencher o formulário de cadastro de forma válida {string}, {string}, {string}') do |nome, celular, dt_nascimento|
  cadastro_pg.cookies
  cadastro_pg.criar_uma_conta
  cadastro_pg.preencher_nome(nome)
  cadastro_pg.preencher_email
  cadastro_pg.preencher_senha
  cadastro_pg.preencher_cpf
  cadastro_pg.preencher_celular(celular)
  cadastro_pg.preencher_data_nascimento(dt_nascimento)
  cadastro_pg.aceitar_termo
  cadastro_pg.cadastrar_conta
end

Entao('é solicitado confirmação de token via celular') do
  cadastro_pg.validar_depois
end
