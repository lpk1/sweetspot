class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :require_login

  def home
  end

  def require_login
    if user_signed_in?
      redirect_to spots_path
    end
  end
end
