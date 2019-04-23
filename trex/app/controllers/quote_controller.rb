class QuoteController < ApplicationController

    def index
        @quotes = Quote.all.sample
        render json: @quotes
    end

end
