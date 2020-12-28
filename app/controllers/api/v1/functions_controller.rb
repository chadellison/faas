module Api
  module V1
    class FunctionsController < ApplicationController
      def create
        url = Function.register(function_params[:function], request)
        render json: { data: url }, status: 201
      end

      def show
        function = Function.find_by(id: params[:id], guid: params[:guid])
        if function.present?
          result = eval(function.method)
          render json: { data: result }
        else
          render json: { error: 'Record not found' }, status: 404
        end
      end

      private

      def function_params
        params.permit(:function)
      end
    end
  end
end
