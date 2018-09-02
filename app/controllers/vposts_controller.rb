# frozen_string_literal: true

class VpostsController < ApplicationController
  def new
  end

  def create
    @vpost = Vpost.new(vpost_params)
    @vpost.username = current_user
    @vpost.save
    redirect_to @vpost #gives instance var to view 
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
    params.require(:vpost).permit(:title, :image, :description)
    
  end
end
