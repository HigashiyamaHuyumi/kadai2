class BooksController < ApplicationController

  def create #データを追加（保存）する
    @book = Book.new(book_params)
    if @book.save
     flash[:notice] = "Book was successfully created."
     redirect_to book_path(@book.id)
    else
      flash.now[:alert] = "エラー"
      render :new
    end
  end
  
  def index #データの一覧を表示する
   @book = Book.new
   @index = Book.all
  end

  def show #データの内容（詳細）を表示する
  end

  def edit #データを更新するためのフォームを表示する
  end
  
  def update #データを更新する
  end

  def destroy #データを削除する
  end

  private
   
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
