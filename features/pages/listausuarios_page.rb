class ListarUsers < SitePrism::Page
  set_url '/users'

  elements :lista, 'tr > td'
  
  def vetorLista
    list = Array.new
    sublist = Array.new
    i = 0
    lista.each do |listas|
      sublist.push(listas.text)
      list.push(sublist[i])
      i = i + 1
    end
    puts "#{list[0][0]}"
    puts "#{list[1][0]}"
    puts "#{list[2][0]}"

  end
end