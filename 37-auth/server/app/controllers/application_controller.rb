class ApplicationController < ActionController::API

  def issue_token(user)
    puts "YOUR IN THE ISSUE METHOD"
    JWT.encode({user_id: user.id}, 'SOME SECRET KEY', 'HS256')
  end

  def current_user
    @user ||= User.find_by(id: user_id)
  end

  def token
    request.headers['Authorization']
  end

  def decoded_token
    begin
      JWT.decode(token, 'SOME SECRET KEY', true, { :algorithm => 'HS256' })
    rescue JWT::DecodeError
      [{}]
    end
  end

  def user_id
    decoded_token.first['user_id']
  end

  def logged_in?
    !!current_user
  end
end
