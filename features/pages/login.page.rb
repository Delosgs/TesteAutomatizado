
#Criado a classe LoginPage Para acessar a pagna e fazer login usando parametros do HTML (estendida do SitePrism::Page)
class LoginPage < SitePrism::Page
    set_url'' # usado quando quer acessar determinado local colancando o pafh do site
    element :emailField, :id, "session_key"
    element :passwordField, :id, "session_password"
    element :loginButton, :xpath, "//button[@class='sign-in-form__submit-button']"
    
# Metodo userLogin dentro da classe LoginPage para logar na site
    def userLogin
        emailField.set (email)
        passwordField.set (password)
        loginButton.click
    end
end