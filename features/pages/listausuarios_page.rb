class ListarUsers < SitePrism::Page
  set_url '/users'

  elements :lista, 'tr > td'
  
  def vetorLista()
    puts "#{lista[0].text}"
    puts "#{lista[1].text}"
    puts "#{lista[2].text}"


    var1 = lista[0].text
    var2 = lista[1].text
    var3 = lista[2].text

    puts "#{var1}" 
  end
end