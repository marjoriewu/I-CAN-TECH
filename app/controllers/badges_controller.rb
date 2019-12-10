class BadgesController < ApplicationController
  def index
    @badges = Badge.all.where(user_id: current_user)
  end

  def show
  end
end
