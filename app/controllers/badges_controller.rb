class BadgesController < ApplicationController
  def index
    @badges = Badge.all
  end

  def show

  end
end
