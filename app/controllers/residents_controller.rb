class ResidentsController < ApplicationController
    def index
        @users = User.all
    end
end