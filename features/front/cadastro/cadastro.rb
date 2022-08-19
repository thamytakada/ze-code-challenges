# frozen_string_literal: true

module Pages
  class Cadastro < SitePrism::Page
    set_url '/conta/entrar'

    element :lnk_criar_conta,     'a[id="create-account-link"]'
    element :txt_nome_sobrenome,  'input[id="signup-form-input-name"]'
    element :txt_email,           'input[id="signup-form-input-email"]'
    element :txt_senha,           'input[id="signup-form-input-password"]'
    element :txt_cpf,             'input[id="signup-form-input-document"]'
    element :txt_celular,         'input[id="signup-form-input-phone"]'
    element :txt_data_nascimento, 'input[id="signup-form-input-age"]'
    element :chk_termo,           'input[id="sign-up-form-input-terms"]'
    element :btn_cadastrar_conta, 'button[id="signup-form-button-signup"]'
    element :lnk_validar_depois,  'a[id="confirm-phone-link-validate-later"]'
    element :btn_aceitar_cookies, '#onetrust-accept-btn-handler'

    def cookies
      if has_btn_aceitar_cookies?(wait: 10)
        btn_aceitar_cookies.click
      else
        p 'Sem aceite de cookies'
      end
    end

    def criar_uma_conta
      wait_until_lnk_criar_conta_visible(wait: 10)
      lnk_criar_conta.click
    end

    def preencher_nome(nome)
      wait_until_txt_nome_sobrenome_visible
      p ("nome: #{nome}")
      txt_nome_sobrenome.set(nome)
    end

    def preencher_email(email = Faker::Internet.email)
      wait_until_txt_email_visible
      txt_email.set(email)
      p ("email: #{email}")
    end

    def preencher_senha
      wait_until_txt_senha_visible
      txt_senha.set('C@seze001')
    end

    def preencher_cpf(cpf = Faker::CPF.numeric)
      @use_cpf = cpf
      txt_cpf.set(@use_cpf)
      p ("cpf: #{@use_cpf}")
    end

    def preencher_celular(celular)
      wait_until_txt_celular_visible
      txt_celular.set(celular)
      p ("celular: #{celular}")
    end

    def preencher_data_nascimento(dt_nascimento)
      wait_until_txt_data_nascimento_visible
      txt_data_nascimento.set(dt_nascimento)
    end

    def aceitar_termo
      chk_termo.click
    end

    def cadastrar_conta
      has_btn_cadastrar_conta?
      btn_cadastrar_conta.click
    end

    def validar_depois
      wait_until_lnk_validar_depois_visible
      lnk_validar_depois.click
    end
  end
end
