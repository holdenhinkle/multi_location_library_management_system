module Api
  module V1
    class LibrariesController < ApplicationController
      protect_from_forgery with: :null_session
      before_action :set_library, only: [:show, :update, :destroy]

      def index
        libraries = Library.all

        render json: LibrarySerializer.new(libraries).serialized_json
      end

      def show
        render json: LibrarySerializer.new(@library).serialized_json
      end

      def create
        library = Library.new(library_params)

        if library.save
          render json: LibrarySerializer.new(library).serialize_json
        else
          render json: { error: @library.errors.messages }, status: 422
        end
      end

      def update
        if @library.update(library_params)
          render json: LibrarySerializer.new(@library).serialized_json
        else
          render json: { error: @library.errors.messages }, status: 422
        end
      end

      def destroy
        if @library.destroy
          head :no_content
        else
          render json: { error: @library.errors.messages }, status: 422
        end

      end

      private

      def library_params
        params.require(:library).permit(:name,
                                       :slug,
                                       :phone,
                                       :email,
                                       :address_1,
                                       :address_2,
                                       :city,
                                       :state,
                                       :zip_code,
                                       :active)
      end

      def set_library
        @library = Library.find_by(slug: params[:slug])
      end
    end
  end
end