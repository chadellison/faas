module Api
  module V1
    class FunctionsController < ApplicationController
      def create
        function = Function.create(method: function_params[:function])
        url = "#{request.host}:#{request.port}#{request.path}/#{function.id}"
        render json: { data: url }, status: 201
      end

      def show
        function = Function.find_by(id: params[:id])
        if function.present?
          result = eval Function.find(params[:id]).method
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
