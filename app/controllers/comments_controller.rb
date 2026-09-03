class CommentsController < ApplicationController
  before_action :logged_in_user
  before_action :correct_user, only: :destroy

  def create
    @micropost = Micropost.find(params[:micropost_id])
    @comment = @micropost.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:success] = "コメントを投稿しました"
    else
      flash[:danger] = "コメントの投稿に失敗しました"
    end
    redirect_to request.referrer || root_url
  end

  def destroy
    @comment.destroy
    flash[:success] = "コメントを削除しました"
    redirect_to request.referrer || root_url
  end

  private

  def comment_params
    params.expect(comment: [:content])
  end

  def correct_user
    @comment = current_user.comments.find_by(id: params[:id])
    redirect_to root_url, status: :see_other if @comment.nil?
  end
end
