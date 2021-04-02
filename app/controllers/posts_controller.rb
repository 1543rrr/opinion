class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else  
    render :new
    end
  end

  def destroy
    post = post.find(params[:id])
    post.destroy
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
      end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  private
  def post_params
    params.require(:post).permit(:user, :title, :content)
  end

  def set_users
    @users = Users.find(params[:id])
  end

  def move_to_index
    post = Post.find(params[:id])
   unless post.user == current_user
                              # ↑ログインしているユーザー  ログインしているユーザー＝プロトタイプのユーザー
    redirect_to action: :index 
  end
end 
end
