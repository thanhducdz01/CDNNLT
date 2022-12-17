module SessionHelper
    def log_in user
        session[:sv_id] = user.sv_id
    end

    def log_out
    session.delete :sv_id
  end
end
