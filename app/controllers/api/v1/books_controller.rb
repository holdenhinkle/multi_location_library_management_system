module Api
  module V1
    class BooksController < ApplicationController
      protect_from_forgery with: :null_session
      before_action :set_book, only: [:show, :update, :destroy]

      def index
        books = Book.all

        render json: BooksSerializer.new(books).serialized_json
      end

      def show
        render json: BooksSerializer.new(@book).serialized_json
      end

      def create
        book = Book.new(book_params)

        if book.save
          render json: BooksSerializer.new(book).serialized_json
        else
          render json: { error: book.errors.messages }, status: 422
        end
      end

      def update
        if @book.update(book_params)
          render json: BooksSerializer.new(@book).serialized_json
        else
          render json: { error: @book.errors.messages }, status: 422
        end
      end

      def destroy
        if @book.destroy
          head :no_content
        else
          render json: { error: @book.errors.messages }, status: 422
        end
      end

      private

      def book_params
        params.require(:book).permit(:isbn,
                                     :title,
                                     :description,
                                     :image_url,
                                     :price)
      end

      def set_book
        @book = Book.find_by(slug: params[:slug])
      end
    end
  end
end