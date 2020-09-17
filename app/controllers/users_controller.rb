class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new 
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "ユーザー「#{@user.name}」を登録しました ｷﾀ━(ﾟ∀ﾟ)━!"
      redirect_to users_url
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  if @user.update(user_params)
    flash[:success] = "ユーザー「#{@user.name}」を更新しました! (꜆꜄•ω•)꜆꜄꜆"
    redirect_to user_url
  else
    render :edit
  end
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  flash[:success] = "ユーザー「#{@user.name}」を削除しました ﾟ(ﾟ´Д｀ﾟ)ﾟ。"
  redirect_to root
end

private

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

def correct_user
  user = User.find(params[:id])
  redirect_to root_url if current_user != user
end
  
end
