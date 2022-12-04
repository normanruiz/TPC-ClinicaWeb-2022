class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    profile = Profile.new
    data_profile = params[:profile]
    profile.name = data_profile[:name]
    profile.save
    redirect_to "/profiles/#{profile.id}/show"
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    data_profile = params[:profile]
    name = data_profile[:name]
    @profile.update(name: name)
    redirect_to "/profiles/#{@profile.id}/show"
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to "/profiles/index"
  end

end
