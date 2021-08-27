class BooksController < ApplicationController

  def index
    @books=Book.all
    @book =Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      flash[:alert]="メッセージが登録されました"
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render 'index'
    end
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
    flash[:alert]="メッセージが登録されました"
  end


  def edit
    @book = Book.find(params[:id])
    flash[:alert]="メッセージが登録されました"
  end

  def new
    @book =Book.new
    flash[:alert]="メッセージが登録されました"
  end

  def show
    @book = Book.find(params[:id])
    flash[:alert]="メッセージが登録されました"
  end

 def destroy
   book = Book.find(params[:id])
   book.destroy
   redirect_to books_path
 end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
