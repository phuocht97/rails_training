class SessionsController < ApplicationController

    def new
        
    end

    def create
        
        # render plain: params[:session][:email] <<'(--)'<< (params[:session][:password].to_s)
       
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            sign_in user
            redirect_to user
        else
          flash[:danger_al] = 'Invalid email/password combination' 
          redirect_to signin_path
        end
    end

    def destroy
			sign_out
			redirect_to root_url
    end
end
