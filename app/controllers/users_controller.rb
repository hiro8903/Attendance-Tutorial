class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
    # 新規作成ページを開く
  def new 
    @user = User.new
  end
  
  # 新規作成フォームの送信を受け取り登録の可否による処理
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = '新規作成に成功しました。'
      redirect_to @user
    else
      render :new
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
end