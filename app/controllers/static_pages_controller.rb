class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @pinned_micropost = current_user.pinned_micropost
      @feed_items = current_user.feed.where.not(id: current_user.pinned_micropost_id).paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end