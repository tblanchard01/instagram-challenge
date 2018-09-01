# frozen_string_literal: true

class VpostsController < ApplicationController
  def new
  end

  def create
    @vpost = Vpost.new(vpost_params)
    @vpost.save
    redirect_to @vpost #gives instance var to view 
    end

    def show 
    @vpost = Vpost.find(params[:id])
    end 

    def index 
    @vposts = Vpost.all 
    end 

     private
  def vpost_params
    params.require(:vpost).permit(:title, :image, :description)
  end
end
