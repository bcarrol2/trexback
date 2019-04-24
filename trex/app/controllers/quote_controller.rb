class QuoteController < ApplicationController

    def index
        # Stores seeded data in @quotes then shows data in json format
        @quotes = Quote.all.sample
        render json: @quotes
    end
    # This instance method gets all the quotes, then only gives one random quote to front end

end
