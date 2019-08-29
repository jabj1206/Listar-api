module Api
    module V1
      class Api::V1::ProductsController < ApplicationController
        def index
          respond = Product.all
          render json: respond
        end
      end
    end
    end
  
