class HomeController < ApplicationController
  def index
  end
  def about
  end

  def sign_out_user
    sign_out  current_user
    redirect_to new_user_session_path
  end
end
