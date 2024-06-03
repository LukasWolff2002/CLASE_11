class UsersController < ApplicationController
    def index
      # Inicia con 1 la primera vez que se accede a la página
      session[:count] = 1
      @users = User.all.sample(session[:count])
      respond_to do |format|
        format.html  # Si tienes una vista HTML
        format.json { render json: @users }
      end
    end
  
    def refresh
      # Incrementa el contador cada vez que se llama a refresh
      session[:count] += 1
      @users = User.all.sample(session[:count])
      respond_to do |format|
        format.json { render json: @users }
      end
    end
  end