class Api::V1::ProductsController < ApiController
  before_action :set_all_products, only: [:index]
  before_action :set_product, only: [:show]

  def index
  end

  def show
   
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def set_all_products
    @products = Product.all
  end

end
