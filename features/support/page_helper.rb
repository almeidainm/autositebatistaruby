Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file}

module PageObjects

  def principal
    @princpag ||= AcessandoPrincipal.new
  end

  def treinamento
    @treinpag ||= AcessandoTreinamento.new
  end
end