def current_user
  if session[:user_id]
    return User.find(session[:user_id])
  else
    return nil
  end
end

def find_user email
  @user ||= User.find_by(email: email)
end

def set_user_session
  session[:user_id] = @user.id if @user
end

def check_user_password password
  @user.password == password
end

def reset_session
  session.clear
end