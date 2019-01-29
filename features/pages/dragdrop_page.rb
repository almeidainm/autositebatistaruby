class DragAndDrop < SitePrism::Page
  element :winston, "#winston"
  element :caixa, '#dropzone'
  element :voltahome, :xpath, '//a[@class="btn red"]'

  def arrastarWinston
    @primeiro_elemento = find('#winston')
    @segundo_elemento = find('#dropzone')
    @primeiro_elemento.drag_to(@segundo_elemento)
  end

  def btnVoltarHome2
    voltahome.click
  end
end