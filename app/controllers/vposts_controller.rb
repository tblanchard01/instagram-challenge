# frozen_string_literal: true

class VpostsController < ApplicationController
  def new
  end

  def create
    render plain: params[:vpost].inspect
    end
end
