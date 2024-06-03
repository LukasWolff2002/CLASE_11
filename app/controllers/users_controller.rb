class UsersController < ApplicationController
    def index
        User.all
    end

    def refresh
        @users = User.all.sample(1)  # Esto seleccionará 4 personas al azar de la base de datos
        respond_to do |format|
          format.json { render json: @users }
        end
    end
    
end
