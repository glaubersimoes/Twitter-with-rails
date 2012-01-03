# -*- coding: utf-8 -*-
# language: pt

Funcionalidade: Login
  Contexto: Quando estou fazendo login
		
  	Cenário: Tentando fazer login sem preencher email e senha
		Dado que eu esteja na pagina de login
		Então eu devo ver "Email"
		Então eu devo ver "Password"
		Quando eu aperto "Entrar"
		Entao eu devo estar na pagina de sessao
		Então eu devo ver "Usuario ou senha invalidos."

	Cenário: Clicando no link Cadastre-se agora
		Dado que eu esteja na pagina de login
		Quando eu clico "Cadastre-se agora!"
		Entao eu devo estar na pagina de cadastro
			

		
		
		
		
		
		
	
		