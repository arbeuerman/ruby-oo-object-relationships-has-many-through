class Customer

    #instance getters/setters
    attr_accessor :name, :age

    #class variables
    @@all = []

    #constructor
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end 

    #class methods
    def self.all
        @@all
    end 

    #instance methods
    def new_meal(waiter, total, tip = 0)
        Meal.new(waiter, self, total, tip)
    end 

    def meals
        Meal.all.select { |meal| meal.customer == self }
    end 

    def waiters
        meals.map { |meal| meal.waiter }
    end 
  
end