class ImageController < ApplicationController

    def index
        @images = Image.all.sample
        render json: @images
    end

end
