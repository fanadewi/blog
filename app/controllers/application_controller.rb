class ApplicationController < ActionController::Base
    include Pagy::Backend
    include Pundit
    rescue_from Pagy::OverflowError, with: :redirect_to_last_page
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    private
    
    def redirect_to_last_page(exception)
        redirect_to url_for(page: exception.pagy.last), notice: "Page ##{params[:page]} is overflowing. Showing page #{exception.pagy.last} instead."
    end

    def user_not_authorized
        flash[:alert] = "You are not authorized to perform this action."
        redirect_to(request.referrer || root_path)
      end
end
