#Criado a classe LoginPage Para acessar a pagna inicial do site usando parametros do HTML 
class LoginPage < SitePrism::Page

    element :userName, :id, "ember135"
    element :navBarHome, :id, "global-nav"
    element :myIcon, :id, "ember28"

# Metodo checkLoginSuccessful para validar se foi efetuado com sucesso
    def checkLoginSuccessful
        expect(userName.text).to eql "Delano Silva"
        expect(navBarHome.text).to eql "Inicio"
        expect(myIcon.text).to eql "Eu"
    end

end