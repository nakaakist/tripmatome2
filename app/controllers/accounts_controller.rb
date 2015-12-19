class AccountsController < ApplicationController
  before_filter :authenticate, :current_user

  def show
    @user = @current_user
  end

  def edit
    @user = @current_user
  end

  def update
    user = @current_user
    user.assign_attributes(params[:user].permit(:nickname, :email, :introduction, :image_url))
    if user.save
      redirect_to :account, notice: 'Account information updated'
    else
      render 'edit'
    end
  end

  def destroy
    @current_user.destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Account deleted'
  end
end
