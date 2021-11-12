class HomeController < ApplicationController
  def index
      @favorited_cocktails = current_user.favorited_cocktails unless !current_user
  end
end
