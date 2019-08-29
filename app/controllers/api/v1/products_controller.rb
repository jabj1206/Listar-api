module Api
  module V1
    class ProductsController < ApplicationController
      def index
        respond = Product.all
        render json: respond
      end
    end
  end
end
