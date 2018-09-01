# frozen_string_literal: true

class VpostsController < ApplicationController
  def new
  end

  def create
    @vpost = Vpost.new(vpost_params)
    @vpost.save
    end

  def show
    @vpost = Vpost.find(params[:id])
end

    private
  def vpost_params
    params.require(:vpost).permit(:title, :image)
  end
end
