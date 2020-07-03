class Item < Sinatra::Base 
    attr_accessor :item
    @@all = []

    def initialize(params)
    @name = params[:item]
    self.save
    end 

    def save
        self.class.all << self
    end
    
    def self.all
        @@all
    end
end 