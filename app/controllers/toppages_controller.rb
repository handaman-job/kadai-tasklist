class ToppagesController < ApplicationController
  def index
    if logged_in?
      @task = current_user.tasks.build  # form_for 用
      @tasks= current_user.tasks.order('created_at DESC').page(params[:page]).per(3)
    end
  end
end
