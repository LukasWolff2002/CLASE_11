class UserController < ApplicationController
    def index
        User.all
    end
end
