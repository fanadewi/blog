class ApplicationController < ActionController::Base
    include Pagy::Backend
    rescue_from Pagy::OverflowError, with: :redirect_to_last_page
    
    private
    def redirect_to_last_page(exception)
        redirect_to url_for(page: exception.pagy.last), notice: "Page ##{params[:page]} is overflowing. Showing page #{exception.pagy.last} instead."
    end
end
