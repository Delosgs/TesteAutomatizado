
#Aqui foi colocado o site que sera usado e seu tempo para acesso, o site esta no arquivo (env.rb)
Dado('que o usuario queira se logar') do
    login.load
end
#Aqui foi inicializado a variavel test e com ela executamos o metodo de login
Quando('ele digita as credenciais validas') do
    login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])

end
#Aqui foi inicializado a variavel home e com ela executamos o metodo de acesso
Entao('deve acessar o site com sucesso') do
    home.checkLoginSuccessful
end