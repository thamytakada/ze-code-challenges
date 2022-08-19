# language: pt
# encoding: UTF-8

@cadastro
Funcionalidade: Efetuar cadastro

	Esquema do Cenário: Cadastrar novo usuario
	
		Dado que usuario acesse o site do zé delivery
		Quando preencher o formulário de cadastro de forma válida '<nome>', '<celular>', '<dt_nascimento>'
		Então é solicitado confirmação de token via celular

    Exemplos:
		| nome    | celular     | dt_nascimento |
		| case ze | 11987918174 | 09/12/1994    |

    #Poderia utilizar o Faker para gerar nome, celular e data de nascimento 
    #mas preferi manter o esquema de cenario para explorar outras possibilidades
