module Dashboard
  class DisplaySettingsController < BaseController
    before_filter :load_settings

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

    private

    def load_settings
      @settings = @profile.display_setting
    end
  end
end
