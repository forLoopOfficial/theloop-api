class API::V1::LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like = current_user.likes.new(like_params)
    render json: @like, status: 201
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    head 204
  end

  private

  def like_params
    params.slice(:post_id)
  end
end
