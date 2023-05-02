class PhonenumController < ApplicationController
    before_action :require_user_log_in!

    def edit
    end

    def update
        if Current.user.update(phonenum_params)
            redirect_to user_home_path, notice: "Phone Number changed"
        else
            render :edit
        end
    end

    private

    def phonenum_params
        params.require(:user).permit(:phone_num)
    end

end