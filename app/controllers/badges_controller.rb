class BadgesController < ApplicationController
  def index
    @badges = Badge.all
    # raise
  end

  def show
  end
end
