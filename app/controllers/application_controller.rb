class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

def logout
   session[:login]=nil
   redirect_to "members/login"
   return
end

def logout
   if session[:login] != nil then
     return true
   else
     return false
   end
   return
end