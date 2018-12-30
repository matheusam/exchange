class UsersController < ApplicationController

  def new
   return create if user_params
   @user = User.new
  end
  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to @user
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :cpf, :address_id)
  end
end
