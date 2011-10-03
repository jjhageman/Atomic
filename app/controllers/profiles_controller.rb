class ProfilesController < ApplicationController
  def show
    @profile = Profile.find_by_slug params[:profile_id]
    if @profile
      respond_to do |format|
        format.html
        format.css
      end
    else
      redirect_to root_path, notice: "The profile for #{params[:profile_id]} could not be found."
    end
  end

end
