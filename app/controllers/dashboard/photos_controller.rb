module Dashboard
  class PhotosController < BaseController
    def show
    end

    def edit
    end

    def update
      if @profile.update_attributes(params[:profile])
        redirect_to dashboard_photos_path
      else
        render action: 'show'
      end
    end
  end
end
