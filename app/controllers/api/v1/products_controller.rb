module Api
  module V1
    class ProductsController < ApplicationController
      def index
        respond = Product.all
        render json: respond
      end
      def create
        @product = Product.create(product_params)   
        if @product.save
          render json: { product: @product }, status: :created
        else
          render json: { errors: @product.errors }, status: 422
        end
      end
      

      private 

  def product_params
    params.require(:product).permit(:name, :price)
  end
    end
  end
end
