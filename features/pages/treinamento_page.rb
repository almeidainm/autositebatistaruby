class 
    AcessandoTreinamento < SitePrism::Page

    #_________________________ELEMENTOS_______________________________"

  

  element :link_form, :xpath, '//a[contains(text(),"Formulário")]'
  element :link_criar, :xpath, '//a[contains(text(),"Criar Usuários")]'
  element :link_lista, :xpath, '//a[contains(text(),"Lista de Usuários")]'


    #verifica pagina home aberta    
    def verificaPg

        numP = 0

        while numP <= 0
            tpg = assert_text(text, 'Bem vindo ao Site')

                if tpg == true
                     numP =+1
                end
        end
        
    end

    def link_formulario_clk
        numF = 0

        while numF <= 0
            tf = link_form.visible?

                if tf == true
                     numF =+1
                     link_form.click
                end
        end
         
    end

    def link_listar_clk
        numL = 0

        while numL <= 0

            tfl = link_listar.visible?

                if tfl == true
            
                     numL =+1
                     link_listar.click
                end
        end

    end
    
    def link_criaruser_clk

        num = 0

        while num <= 0
            tfLc =  assert_text(text,"Criar Usuários" )

                if tfLc == true
                    num =+1
                    link_criar.click
                end
        end
    end
end