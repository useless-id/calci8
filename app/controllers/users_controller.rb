class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @teams = User.find(params[:id]).teams
    @collection = @user.free_matches
  end

  def settings
    @user = User.find(params[:id])
  end
end
