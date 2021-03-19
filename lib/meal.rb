class Meal

    #instance getters/setters
    attr_accessor :waiter, :customer, :total, :tip

    #class variables
    @@all = []

    #constructor
    def initialize(waiter, customer, total, tip=0)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end

    #class methods
    def self.all
        @@all
    end 


end