# frozen_string_literal: true

class VpostsController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?
  
 

  def new
    redirect_to ('/') if !user_signed_in?

  end

  def create
    @vpost = Vpost.new(vpost_params)
    @vpost.username = current_user.username
    @vpost.save
    # redirect_to @vpost #gives instance var to view 
    redirect_to vposts_path 
    end

    def show 
    @vpost = Vpost.find(params[:id])
    end 

    def index     
    redirect_to home_index_path if !user_signed_in?
    @vposts = Vpost.all 
    end 

    private
  def vpost_params
    params.require(:vpost).permit(:title, :image, :description, :username)
    
  end
end
