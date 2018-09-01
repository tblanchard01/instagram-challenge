# frozen_string_literal: true

class VpostsController < ApplicationController
  def new
  end

  def create
    @vpost = Vpost.new(vpost_params)
    @vpost.save
    end

    def index 
    @vposts = Vpost.all 
    end 

     private
  def vpost_params
    params.require(:vpost).permit(:title, :image, :description)
  end
end
