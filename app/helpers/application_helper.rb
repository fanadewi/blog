module ApplicationHelper
    include Pagy::Frontend
    def bg_image(image)
        # byebug
        image.nil? ? 'https://pbs.twimg.com/media/EhzOS7FVkAE7OMU?format=jpg&name=orig' : image
    end
end
