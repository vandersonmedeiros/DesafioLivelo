Dado('que eu acesso o site da livelo') do
    @carrinho = CarrinhoPage.new
    @carrinho.url
  end
   
  Quando('clico em Use seus pontos') do
    @carrinho.usePontos.hover
  end

  Quando('clico em Com Produtos na categoria Casa') do
    @carrinho.comProdutos.hover
    @carrinho.categoriaCasa.click
    sleep(5)
  end

  Quando('eu clico na categoria Cama, mesa e banho') do
    @carrinho.categoriaCama.click
  end

  Quando('eu clico no produto') do    
    @carrinho.clicoProduto.click
    sleep(5)
  end
  
  Quando('clico em adicionar ao carrinho') do
    @carrinho.adicionarCarrinho.click 
    sleep(5)
  end
  
  Então('eu quero ser redirecionado para a página do carrinho e vejo a mensagem {string}') do |mensagemPedido|
    expect(@carrinho.paginaCarrinho).to have_content(mensagemPedido)
  end
  