class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all
  end

  def new
  	@blog = Blog.new
  	#ブログモデルと紐付いた空の箱@blogを定義
  	#インスタンスという
  end

  def create
     blog = Blog.new(blog_params)
     blog.save
     redirect_to "/blogs"
     #他のビューに移動する
     binding.pry
  end

  def show
  	@blog = Blog.find(params[:id])
  end



  private

    def blog_params
      params.require(:blog).permit(:title, :body, :category)
    end
	#ストロングパラメーター
    #ビューから送信されたデータはparamsというモソッドの中に入っている
end
