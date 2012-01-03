# -*- coding: utf-8 -*-
# language: pt

Funcionalidade: Pagina de cadastrar
  Contexto: Quando estou fazendo cadastro
		
  	Cenário: Visualizao de todos os campos
		Dado que eu esteja na pagina de cadastro
		Entao eu devo ver "Cadastre-se"
		Entao eu devo ver "Name"
		Entao eu devo ver "Email"
		Entao eu devo ver "Password"
		Entao eu devo ver "Confirmation"
		
	Cenário: Tentando fazer cadastro sem preencher campos
		Dado que eu esteja na pagina de cadastro
		Quando eu aperto "Cadastrar"
		Entao segura ai por "5" segundos
		Entao eu devo ver "6 errors prohibited this user from being saved:"
		Entao eu devo ver "There were problems with the following fields:"
		Entao eu devo ver "Name can't be blank"
		Entao eu devo ver "Password can't be blank"
		Entao eu devo ver "Email can't be blank"
		Entao eu devo ver "Name is too short"