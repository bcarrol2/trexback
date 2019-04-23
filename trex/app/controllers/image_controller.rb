class ImageController < ApplicationController

    def index
        @images = Image.fifth
        render json: @images
    end

end
