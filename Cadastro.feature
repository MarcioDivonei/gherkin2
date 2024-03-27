            #language: pt

            Funcionalidade: Tela de Cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que estou na tela de cadastro de usuário

            Cenário: Cadastro válido
            Quando eu preencher todos os campos obrigatórios e colocar e-mail com formato válido
            Então deve exibir a mensagem "Usuário cadastrado com sucesso"

            Cenário: Email inválido
            Quando eu preencher todos os campos obrigatórios e colocar Email com formato inválido
            Então deve exibir a mensagem de alerta "Email inválido"

            Cenário: Campos vazios
            Quando eu não preencher todos os campos obrigatórios e colocar Email com formato valido
            Então deve exibir a mensagem de alerta "Preencha todos os campos"

            Esquema do Cenário: Exemplos de dados
            Quando eu digitar <Nome>, <Sobrenome>, <pais>, <Endereco>, <Cidade>, <CEP>, <Telefone> e <Email>
            Então deve Exibir <mensagem>

            | nome    | sobrenome | pais     | Endereco  | Cidade      | CEP        | Telefone       | Email                   | mensagem                         |
            | "joão"  | "silva"   | "brasil" | "rua 123" | "são paulo" | "01153000" | "011912344321" | "joaosilva@gmail.com"   | "Usuário cadastrado com sucesso" |
            | "maria" | "santos"  | "brasil" | "rua 456" | "Blumenau"  | "89051000" | "047912344321" | "Mariasantos@gmail.com" | "Usuário cadastrado com sucesso" |
            | "josé"  | "pereira" | "brasil" | "rua 789" | "gaspar"    | "89110000" | "047921436587" | "jose123@hotmail.com"   | "Usuário cadastrado com sucesso" |
