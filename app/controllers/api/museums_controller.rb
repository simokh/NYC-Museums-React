module Api
  module V1
    class MuseumsController < ApplicationController
      def index
        museums = Museum.all

        render json: MuseumSerializer.new(museums).serialized_json
      end

      def show
        museum = Museum.find_by(slug: params[:slug])

        render json: MuseumSerializer.new(museum).serialized_json
      end

      def create
        museum = Museum.new(museum_params)

        if museum.save 
            render json: MuseumSerializer.new(museum).serialized_json
        else 
            render json:{errors :museum.errors.messages}, status: :unprocessable_entity
        end
      end

      def update

        museum = Museum.find_by(slug: params[:slug])

        if museum.update(museum_params)  
            render json: MuseumSerializer.new(museum).serialized_json
        else 
            render json:{errors :museum.errors.messages}, status: :unprocessable_entity
        end

      end

      def destroy

        museum = Museum.find_by(slug: params[:slug])

        if museum.destroy 
            head :no_content
        else 
            render json:{errors :museum.errors.messages}, status: :unprocessable_entity
        end

      end


      private

      def museum_params
        params.require(:museum).permit(:name, :image_url)
      end




    end
  end
end
