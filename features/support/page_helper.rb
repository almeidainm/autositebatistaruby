Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file}

module PageObjects

  def index
    @princpag ||= AcessandoPrincipal.new
  end

  def home
    @treinpag ||= AcessandoTreinamento.new
  end

  def formulario
    @formpag ||= FormularioPage.new
  end

  def cadastroSucesso
    @cadastropag ||= CadastroSucessoPage.new
  end
end