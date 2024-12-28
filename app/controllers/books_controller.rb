class BooksController < ApplicationController

    before_action :set_book, only: %i[edit update show]

    def index
        @books = Book.all
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)

        if @book.save
            redirect_to books_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
        if @book.update(book_params)
            redirect_to books_path
        else
            render :edit, status: :unprocessable_entity
        end

    end

    def show
    end

    private

    def book_params
        params.require(:book).permit(:title, :description, :author_id)
    end

    def set_book
        @book = Book.find(params[:id])
    end
end
