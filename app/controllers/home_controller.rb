class HomeController < ApplicationController
  before_action :user_logged_in, only: %i[profile index]

  def index
    @title = "Co-Curricular Activities"
    @ccas = Cca.all
  end
  
  def profile
    # @ccas = CCA.where(user_id: current_user.id)
  end

  private 

    # def get_ccas
    #   params[:cca]
    # end

    # def set_stall
    #   @stalls = Stall.all
    # end
end
