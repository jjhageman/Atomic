class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = current_user
    @profile = @user.profile
  end

end
