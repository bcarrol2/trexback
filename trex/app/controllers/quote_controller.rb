class QuoteController < ApplicationController

    def index
        @quotes = Quotes.all
    end

end
