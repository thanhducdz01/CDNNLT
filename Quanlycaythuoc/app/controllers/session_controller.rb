class SessionController < ApplicationController
  def new
  end

  def create
    user = QlTv.find_by sv_id: params[:session][:id]
    if (user && user.authenticate(params[:session][:password]))
      log_in user
      redirect_to '/welcome'
      flash[:notice] = "Đăng nhập thành công"
    else
      flash[:notice] = "Mã sinh viên hoặc mật khẩu không đúng"
      render :new
    end
  end

  def destroy
    session[:sv_id] = nil
    redirect_to root_path, notice: "Đã đăng xuất"
  end
end
