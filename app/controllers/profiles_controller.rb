class ProfilesController < ApplicationController
  def show
    @profile = Profile.find_by_slug params[:profile_id]
    unless @profile
      redirect_to root_path, notice: "The profile for #{params[:profile_id]} could not be found."
    end
  end

end
