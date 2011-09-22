module Dashboard
  class LinksListsController < BaseController
    def show
    end

    def edit
    end

    def update
      if @profile.update_attributes(params[:profile])
        redirect_to dashboard_links_list_path, notice: 'Your links were successfully updated.'
      else
        render action: 'edit'
      end
    end
  end
end
