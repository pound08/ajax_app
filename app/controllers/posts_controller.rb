class PostsController < ApplicationController
  def index # indexアクションを定義した
    @posts = Post.all.order(id: "DESC")# 全てのレコードを@postsに代入
  end 
  
  def new
  end

  def create
    Post.create(content: params[:content])
  end

end

