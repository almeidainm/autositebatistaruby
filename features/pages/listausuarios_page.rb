class ListarUsers < SitePrism::Page
  set_url '/users'

  elements :lista, 'tr > th'
  
  def vetorLista
    tamanholista = lista.size
    puts "#{tamanholista}"
  end
end