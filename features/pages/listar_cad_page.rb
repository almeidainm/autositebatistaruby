class ListarCad < SitePrism::Page
  
    elements :linhas, 'tbody > tr'
    elements :colunas, 'tr > td'
    element :btDelete, :xpath, '//tbody//tr[1]//td[11]//a[1]'
    element :btn_voltar, :xpath, '//a[@class="btn red"]'
    element :btDeleteTR2, :xpath, '//tbody//tr[2]//td[11]//a[1]'

        
    

    def vetorLista(nome, sobrenome, email, endereco, universidade, profissao, sexo, idade)
        case nome
            when 'Adriano'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end
                
                @c = 0
                @x = 1
                
            when 'Bruno'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end

                @c = 1
                @x = 2

            when 'Carlos'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end

                @c = 2
                @x = 3

            when 'Daniel'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end
                @c = 3
                @x = 4

            when 'Eva'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end
                @c = 4
                @x = 5

            when 'Flavia'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end
                @c = 5
                @x = 6

            when 'Gisele'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end
                @c = 6
                @x = 7
            
            when 'Helena'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end
                @c = 7
                @x = 8
        end

        if(linhas[1].text =="Adriano adriano@gmail.com Universidade Paulista Masculino Tester 30 rua teste search edit delete")
            btDeleteTR2.click
            page.accept_confirm
        end
            
        @valor_texto = "#{nome} #{sobrenome} #{email} #{@universidade}#{@sexo}#{@profissao}#{@idade}#{@endereco}search edit delete"
        puts @c.to_i
        texto = "#{linhas[@c.to_i].text}"
      
        if texto == @valor_texto
            $verifica = true
           
        else

          $verifica = false
            
        end

    end

    



    def btDeleteAll_clk
        cont = 0
        num  = 300

        while cont < num do
            
            
            
           
           
            if  page.has_selector?(:xpath, '//tbody//tr[1]//td[11]//a[1]') == false
                cont =+ 400
                
            else
                btDelete.click
            
                page.accept_confirm
                cont =+ 1
            end
            
        end

   

    end

    def btnVoltarHome
        btn_voltar.click
    end

    def verificarAntes
        treinamento = AcessandoTreinamento.new
        
        
        tamanho = linhas.size
        
        if(tamanho >0)
            
            btDeleteAll_clk
            btn_voltar.click
            treinamento.link_formulario_clk
        else
            btn_voltar.click
            treinamento.link_formulario_clk
            

        end

    end

end