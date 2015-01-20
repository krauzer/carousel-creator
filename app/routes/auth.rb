
get '/login' do
  erb :'auth/login'
end

get '/signup' do
  erb :'auth/signup'
end

post '/login' do
  param :email,    String
  param :password, String

  if find_user params[:email]
    if check_user_password params[:password]
      set_user_session
      redirect "/users/#{@user.parameter_key}"
    else
      redirect "/login"
    end
  else
      redirect "/login"
  end
end
