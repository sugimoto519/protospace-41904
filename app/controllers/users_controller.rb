class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @prototype = @user.prototypes.new
    @prototypes = @user.prototypes.includes(:user)
  end
end
