class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    # def after_sign_up_path_for(resource)
    #     redirect_to new_product_path
    # end
end
