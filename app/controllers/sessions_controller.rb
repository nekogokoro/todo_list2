class SessionsController < ApplicationController
  skip_before_action :login_required
  
  def new

  end

  def create
    user = User.find_by(email: session_params[:email])

    if user&.authenticate(session_params[:password])
      session[:user_id] = user.id
      flash[:success] = 'ログインしました!!٩( ᐛ )و ٩( ᐛ )و ٩( ᐛ )و ٩( ᐛ )و ٩( ᐛ )و ٩( ᐛ )و ٩( ᐛ )و ٩( ᐛ )و ٩( ᐛ )و ٩( ᐛ )و '
      redirect_to root_url
    else
      flash.now[:danger] = 'メールアドレスとパスワードの組み合わせが存在しません ｳｿ━━━Σ(ﾟДﾟ｡)ﾉﾉ━━━ﾝ!!!? ｼｮﾎﾞｰﾝ━━(´·ω·`)━━'
      render :new
    end
  end

  def destroy
    reset_session
    flash[:success] = 'ログアウトしました( ˘ω˘ )ｽﾔｧ…( ˘ω˘ )ｽﾔｧ…( ˘ω˘ )ｽﾔｧ…( ˘ω˘ )ｽﾔｧ…( ˘ω˘ )ｽﾔｧ…( ˘ω˘ )ｽﾔｧ…'
    redirect_to login_url
  end

  private

    def session_params
      params.require(:session).permit(:email, :password)
    end
end
