module Dashboard
  class BaseController < ApplicationController
    before_filter :authenticate_user!, :load_user
    layout 'dashboard'  

    private
    def load_user
      @user = current_user
      @profile = @user.profile
    end
  end
end
