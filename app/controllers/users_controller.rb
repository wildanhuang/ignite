class UsersController < ApplicationController
  def index
    @users = User.all.order(id: :asc)
    @spirit_charges = SpiritCharge.all.order(id: :asc)
  end

  def show
    @user = User.find params[:id]
  end

  def confirm
    user = User.find params[:id]
    user.confirm

    redirect_to users_path, :flash => { :success => "Successfully confirm: #{user.firstname}" }
  end
end
