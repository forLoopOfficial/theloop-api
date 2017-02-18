class Api::V1::LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like = current_user.likes.new(like_params)
    if @like.save
      render json: @like, status: 201
    else
      render json: {errors: @like.errors.full_messages}, status: 422
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    head 204
  end

  private

  def like_params
    params.permit(:post_id)
  end
end
