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
<<<<<<< HEAD
  def listar
    @list ||= ListarCad.new
=======

  def cadastroSucesso
    @cadastropag ||= CadastroSucessoPage.new
>>>>>>> ede36f3cc8e3b3be1253d258614a977b806b73de
  end
end