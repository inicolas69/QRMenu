module Api
  module V1
    class MenusController < ApplicationController
      # before_action :authenticate, only: %i[create update destroy]
      protect_from_forgery with: :null_session

      # GET /api/v1/menus
      def index
        render json: serializer(menus, options)
      end

      # GET /api/v1/menus/id
      def show
        render json: serializer(menu, options)
      end

      # POST /api/v1/menus
      def create
        menu = Menu.new(menu_params)

        if menu.save
          render json: serializer(menu)
        else
          render json: errors(menu), status: 422
        end
      end

      # PATCH /api/v1/menus/:id
      def update
        menu = Menu.find(params[:id])

        if menu.update(menu_params)
          render json: serializer(menu, options)
        else
          render json: errors(menu), status: 422
        end
      end

      # DELETE /api/v1/menus/:id
      def destroy
        if menu.destroy
          head :no_content
        else
          render json: errors(menu), status: 422
        end
      end

      private

      # Used For compound documents with fast_jsonapi
      def options
        @options ||= { include: %i[dishes] }
      end

      # Get all menus
      def menus
        @menus ||= Menu.includes(dishes: :menu).all
      end

      # Get a specific menu
      def menu
        @menu ||= Menu.includes(dishes: :menu).find(params[:id])
      end

      # Strong params
      def menu_params
        params.require(:menu).permit(:name, :restaurant_name, :user_id)
      end

      # fast_jsonapi serializer
      def serializer(records, options = {})
        MenuSerializer
          .new(records, options)
          .serialized_json
      end

      # Errors
      def errors(record)
        { errors: record.errors.messages }
      end
    end
  end
end
