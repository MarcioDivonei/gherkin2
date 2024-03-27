#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que eu acesse o Ebac-SHOP

Cenário: Autenticação válida
Quando eu digitar o usuário "joao@gmail.com"
E a senha "joão@123"
Então deve ser direcionado para a tela de checkout

Cenário: Usuário Inválido
Quando eu digitar o usuário "jao@gmail.com.br"
E a senha "joão@123"
Então Deve exibir a mensagem de alerta "Usuário inválido"

Cenário: Senha inválida
Quando eu digitar o usuário "joao@gmail.com"
E a senha "joao.123"
Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"