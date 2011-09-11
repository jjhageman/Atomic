module Dashboard
  class ProfilesController < BaseController
    def show
    end

    def edit
    end

    def update
      if @profile.update_attributes(params[:profile])
        redirect_to dashboard_profile_path, notice: 'Your profile was successfully updated.'
      else
        render action: 'edit'
      end
    end
  end
end
