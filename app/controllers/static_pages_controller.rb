class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost = current_user.microposts.build
      # 固定ポストを1件取得
      @pinned_micropost = current_user.microposts.find_by(pinned: true)
      # ページネーションがズレないよう、通常のフィードからは固定ポストを除外
      @feed_items = current_user.feed.where.not(id: @pinned_micropost&.id).paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
