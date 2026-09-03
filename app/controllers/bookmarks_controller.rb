class BookmarksController < ApplicationController
  before_action :logged_in_user

  def create
    @micropost = Micropost.find(params[:micropost_id])
    current_user.bookmark(@micropost)
    respond_to do |format|
    end
  end

  def destroy
    @bookmark = current_user.active_bookmarks.find(params[:id])
    @micropost = @bookmark.micropost
    current_user.unbookmark(@micropost)
    respond_to do |format|
    end
  end
end
