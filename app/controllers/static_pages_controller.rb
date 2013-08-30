class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost = current_user.microposts.build if signed_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
      #similar to t he 'new' action within the signup form
      #current_user.microposts.build created a new micropost
      #thats blank, this allows the form_for method to make the
      #approriate request upon submission.
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
