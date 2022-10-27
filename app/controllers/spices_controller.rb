class SpicesController < ApplicationController
    def index
        spices = Spice.all 
        render json: spices, status: :ok
      end
    
      def create
        spice = Spice.create(params.permit(:title, :image, :description, :notes, :rating))
        render json: spice, status: :created
      end

      def update
        spice = Spice.find(params[:id])
        spice.update(params.permit(:title, :image, :description, :notes, :rating))
        render json: spice, status: :accepted
      end

      def destroy
        spice = Spice.find(params[:id])
        spice.destroy
        head :no_content
      end
end
