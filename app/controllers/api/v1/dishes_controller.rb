module Api
  module V1
    class DishesController < ApplicationController
      # before_action :authenticate
      protect_from_forgery with: :null_session

      # POST /api/v1/dishes
      def create
        # dish = current_user.dishes.new(dish_params)
        dish = Dish.new(dish_params)

        if dish.save
          render json: serializer(dish)
        else
          render json: errors(dish), status: 422
        end
      end

      # DELETE /api/v1/dishes/:id
      def destroy
        # dish = current_user.dishes.find(params[:id])
        dish = Dish.find(params[:id])

        if dish.destroy
          head :no_content
        else
          render json: errors(dish), status: 422
        end
      end

      private

      # Strong params
      def dish_params
        params.require(:dish).permit(:name, :description, :price, :menu_id, :category)
      end

      # fast_jsonapi serializer
      def serializer(records, options = {})
        DishSerializer
          .new(records, options)
          .serialized_json
      end

      def errors(record)
        { errors: record.errors.messages }
      end
    end
  end
end
