#language: pt

Funcionalidade: Adicionar produto ao carrinho

    Como um Cliente da Livelo 
    Eu quero acessar a página home 
    A fim de adicionar um produto ao carrinho 

    @Carrinho_happy
    Cenário: Adicionar produto ao carrinho com sucesso
        Dado que eu acesso o site da livelo
        Quando clico em Use seus pontos
        E clico em Com Produtos na categoria Casa
        E eu clico na categoria Cama, mesa e banho
        E eu clico no produto
        E clico em adicionar ao carrinho
        Então eu quero ser redirecionado para a página do carrinho e vejo a mensagem "Resumo do pedido"


