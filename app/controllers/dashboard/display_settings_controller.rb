module Dashboard
  class DisplaySettingsController < BaseController
    def show
    end

    def edit
    end

    def update
      if @profile.update_attributes(params[:profile])
        redirect_to dashboard_display_settings_path, notice: 'Your profile display were successfully updated.'
      else
        render action: 'edit'
      end
    end
  end
end
