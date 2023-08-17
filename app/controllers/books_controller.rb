class BooksController < ApplicationController

  def create #データを追加（保存）する
    @book = Book.new(book_params)
    if @book.save
     redirect_to book_path(@book.id)
    else
     render :index
    end
  end
  
  def index #データの一覧を表示する
   @book = Book.new
   @indexes = Book.all
  end

  def show #データの内容（詳細）を表示する
    @book = Book.find(params[:id])  
  end

  def edit #データを更新するためのフォームを表示する
  end
  
  def update #データを更新する
  end

  def destroy #データを削除する
    book = Book.find(params[:id])  # データ（レコード）を1件取得
    book.destroy  # データ（レコード）を削除
    redirect_to '/books'  # 投稿一覧画面へリダイレクト  
  end

  private
   
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end