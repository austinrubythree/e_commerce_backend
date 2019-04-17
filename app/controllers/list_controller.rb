class ListController < ApplicationController

  private
  # def index
  #   Product.all
  # end 

  def collection
    @products ||= Product.all
  end

  def resource
    @product ||=Product.find params[:id]
  end
end
