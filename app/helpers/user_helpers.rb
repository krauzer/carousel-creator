def no_user
  erb :"users/no_user"
end

def build_user
  user = validate_user_params
  @user ||= User.new user
end

def save_user
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.parameter_key}"
  end
end

def validate_user_params
  param :name,            String
  param :email,           String, blank: false
  param :password,        String, blank: false
  param :confirmation,    String
  unless params[:name] == ""
    name = params[:name]
  else
    name = params[:email]
  end
  user =  {name: name,
          email: params[:email],
          password: params[:password]
        }
end