module Api
  module V1
    class AuthorsController < ApplicationController
      protect_from_forgery with: :null_session
      before_action :set_author, only: [:show, :update, :destroy]

      def index
        authors = Author.all

        render json: AuthorSerializer.new(authors, options).serialized_json
      end

      def show
        render json: AuthorSerializer.new(@author, options).serialized_json
      end

      def create
        author = Author.new(author_params)

        if author.save
          render json: AuthorSerializer.new(author).serialized_json
        else
          render json: { error: author.errors.messages }, status: 422
        end
      end

      def update
        if @author.update(author_params)
          render json: AuthorSerializer.new(@author, options).serialized_json
        else
          render json: { error: @author.errors.message }, status: 422
        end
      end

      def destroy
        if @author.destroy
          head :no_content
        else
          render json: { error: @author.errors.message }, status: 422
        end
      end

      private

      def author_params
        params.require(:author).permit(:first_name, :last_name)

      end

      def set_author
        @author = Author.find_by(slug: params[:slug])
      end

      def options
        @options ||= { include: %i[books] }
      end
    end
  end
end