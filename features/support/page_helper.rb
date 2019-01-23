Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file}

module PageObjects

  def index
    @princpag ||= AcessandoPrincipal.new
  end

  def home
    @treinpag ||= AcessandoTreinamento.new
  end
end