#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu escolha um produto da loja

Cenário: Quantidade inválida
Quando eu escolher o tamanho, cor e colocar a quantidade maior que 10
Então Deve exibir o aviso "quantidade inválida"

Cenário:  cor inválida
Quando eu escolher o tamanho e quantidade maior que 0 e menor que 10
Mas Não colocar a cor
Então Deve exibir o aviso "Por favor selecione uma cor"

Cenário: Tamanho inválido
Quando eu escolher a cor e a quantidade maior que 0 e menor que 10
Mas não selecionar o tamanho
Então Deve exibir o aviso "por favor selecione o tamanho"

Cenário: Configuração valida
Quando eu escolher a cor, tamanho e a quantidade maior que 0 e menor que 10
Então Deve inserir no carrinho

Cenário: Botão limpar
Quando eu escolher a cor, tamanho e a quantidade maior que 0 e menor que 10
Mas clicar no botão limpar
Então deve voltar ao estado original