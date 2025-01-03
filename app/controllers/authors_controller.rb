class AuthorsController < ApplicationController

    def index
        @authors = Author.all
    end

    def new
        @author = Author.new
    end

    def create
        @author = Author.new(author_params)

        if @author.save
            redirect_to books_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @author = Author.find(params[:id])
    end

    private

    def author_params
        params.require(:author).permit(:name, :email)
    end
end
