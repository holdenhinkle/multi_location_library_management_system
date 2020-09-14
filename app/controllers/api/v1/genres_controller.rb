module Api
  module V1
    class GenresController < ApplicationController
      protect_from_forgery with: :null_session
      before_action :set_genre, only: [:show, :update, :destroy]

      def index
        genres = Genre.all

        render json: GenreSerializer.new(genres).serialized_json
      end

      def show
        render json: GenreSerializer.new(@genre).serialized_json
      end

      def create
        genre = Genre.new(genre_params)

        if genre.save
          render json: GenreSerializer.new(genre).serialized_json
        else
          render json: { error: genre.errors.messages }, status: 422
        end
      end

      def update
        if @genre.update(genre_params)
          render json: GenreSerializer.new(@genre).serialized_json
        else
          render json: { error: @genre.errors.messages }, status: 422
        end
      end

      def destroy
        if @genre.destroy
          head :no_content
        else
          render json: { error: @genre.errors.messages }, status: 422
        end
      end

      private

      def genre_params
        params.require(:genre).permit(:name)
      end

      def set_genre
        @genre = Genre.find_by(slug: params[:slug])
      end
    end
  end
end