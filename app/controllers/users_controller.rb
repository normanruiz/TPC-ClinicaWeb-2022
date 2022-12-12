class UsersController < ApplicationController
  def index
    @users = User.all
    render layout: "entity_administration"
  end

  def new
    @user = User.new
    profiles = Profile.all
    @profiles = profiles.map{|p| [p.name, p.id] }
  end

  def create
    user = User.new
    data_user = params[:user]
    user.user = data_user[:user]
    user.password = data_user[:password]
    user.profile = Profile.find(data_user[:profile])
    user.state = true
    user.save
    redirect_to "/users/#{user.id}/show"
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    profiles = Profile.all
    @profiles = profiles.map{|p| [p.name, p.id] }
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    data_user = params[:user]
    user = data_user[:user]
    password = data_user[:password]
    profile = Profile.find(data_user[:profile])
    state = data_user[:state]
    @user.update(user: user, password: password, profile: profile, state: state)
    redirect_to "/users/#{user.id}/show"
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/users/index'
  end

end
