class UsersController < ApplicationController
  


  def index
    @user = User.all
  end

  def show
    @user = User.all


  end

  def new
    @user = User.new
  end

  def edit

  end

  def delete
  end

    def create
     @user = User.new(user_params)
    if @user.save
      log_in @user 
      flash[:success] = "Witamy nowego użytkownika!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:imie, :nazwisko, :telefon, :email, :telefon, :password,
                                   :password_confirmation, :sort)
    end

end
