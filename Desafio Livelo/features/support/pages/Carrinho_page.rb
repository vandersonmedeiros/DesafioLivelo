class CarrinhoPage
    include Capybara::DSL

    def url
        page.driver.browser.manage.window.maximize
        visit "https://www.livelo.com.br/"
        sleep 5
    end

    def usePontos
        find('#span-first-level-menu-1')
    end

    def comProdutos
        find('#span-second-level-menu-1-1')
    end

    def categoriaCasa
        find('#span-third-level-menu-1-1-1')
    end

    def categoriaCama
        find('#div-segmentsItem-wi7800020 > div.owl-stage-outer > div > div:nth-child(4) > a > div')
    end

    def clicoProduto
        find('#wi6200019-endeca-product-listing-points-id > .product-list__element:nth-child(2)') 
    end

    def adicionarCarrinho
        find('#CC-prodDetails-addToCart > .button') 
    end

    def paginaCarrinho
        find('#custom-cart-summary_v1-wi2000039 h2').text  
    end
end