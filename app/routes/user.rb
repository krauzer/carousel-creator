
post '/users' do
  build_user
  save_user or erb :'/auth/signup'
end

get '/users/:parameter_key' do |param_key|
  @user = User.find_by(parameter_key: param_key)
  if @user
    erb :"users/show"
  else
    no_user
  end
end
