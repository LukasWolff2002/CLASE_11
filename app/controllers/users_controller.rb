class UsersController < ApplicationController
  def index
    session[:count] = 0  # Inicia el contador en 0
    session[:shown_users] = []  # Almacena los IDs de los usuarios ya mostrados
    @users = User.none  # Inicialmente, no mostramos ningún usuario
    @total_users = User.count  # Total de usuarios en la base de datos
    respond_to do |format|
      format.html  # Renderizar la vista HTML
      format.json { render json: @users }
    end
  end

  def refresh
    total_users = User.count

    if session[:count] < total_users
      session[:count] += 1
    end

    @new_user = User.where.not(id: session[:shown_users]).sample
    session[:shown_users] << @new_user.id unless @new_user.nil?

    respond_to do |format|
      format.json { render json: @new_user }
    end
  end
end

