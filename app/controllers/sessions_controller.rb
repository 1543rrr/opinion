class SessionsController < ApplicationController
  def new
  end
 
  def create
 
  session[:id] = user.id
  end
end
