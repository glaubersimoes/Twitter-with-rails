# -*- coding: utf-8 -*-
# language: pt

Funcionalidade: Header
  Contexto: Quando estou clicando nos links da pagina

	Cenário: Clicando no link PRINCIPAL do header
		Dado que eu esteja na home
		Quando eu clico "Principal"
		Entao eu devo estar na home
		
  	Cenário: Clicando no link AJUDA do header
		Dado que eu esteja na home
		Quando eu clico "Ajuda"
		Entao eu devo estar na pagina de ajuda
		
	Cenário: Clicando no link ENTRAR do header
		Dado que eu esteja na home
		Quando eu clico "Entrar"
		Entao eu devo estar na pagina de login

	Cenário: Clicando no link SOBRE do footer
		Dado que eu esteja na home
		Quando eu clico "Sobre"
		Entao eu devo estar na pagina sobre

  	Cenário: Clicando no link CONTATOS do footer
		Dado que eu esteja na home
		Quando eu clico "Contatos"
		Entao eu devo estar na pagina de contatos
		
	Cenário: Clicando no link CADASTRAR do footer
		Dado que eu esteja na home
		Quando eu clico "Cadastrar"
		Entao eu devo estar na pagina de cadastro