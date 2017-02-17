class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:destroy, :show]


  def index
    @posts = Post.all.order('created_at DESC')
    render json: @posts, status: 200
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      render json: @post, status: 201
    else
      render json: {errors: @post.errors.full_messages}, status: 422
    end
  end

  def show
    render json: @post, status: 200
  end

  def destroy
    @post.destroy
    head 204
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.slice(:body)
  end
end
