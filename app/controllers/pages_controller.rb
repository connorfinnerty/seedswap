class PagesController < ApplicationController
before_action :authenticate_user!
before_action :set_posts

  def home
  end

end
