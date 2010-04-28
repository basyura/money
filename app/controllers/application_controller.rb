class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  def authenticate 
    authenticate_or_request_with_http_basic do |user_name, password| 
      u = User.where(:user_id => user_name)
      !u.empty? && u[0].password == password
    end 
  end 
end
