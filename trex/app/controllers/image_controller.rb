class ImageController < ApplicationController

    def index
        # Stores seeded data in @images then shows data in json format
        @images = Image.all.sample
        render json: @images
    end
    # Here is where I get all the images, but only provide one random image at a time to client side

end
