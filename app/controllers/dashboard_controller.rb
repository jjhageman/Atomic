class DashboardController < ApplicationController
  before_filter :require_user

  def show
    @user = current_user
    @profile = @user.profile
  end

end
