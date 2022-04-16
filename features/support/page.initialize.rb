Dir[File.join(File.dirname(__FILE__),'~/Users\TesteAutomatizado\features\pages*.page.rb')].each { |file| require file }

module Page
    def login # Metodos que fazem referencia a pages login
        @login ||= LoginPage.new
    end

    def home  # Metodos que fazem referencia a pages home
        @home ||= HomePage.new
    end

end