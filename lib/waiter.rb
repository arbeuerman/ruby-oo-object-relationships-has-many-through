class Waiter

    #instance variable getter/setters
    attr_accessor :name, :yrs_experience

    #class variable
    @@all = []

    #constructor
    def initialize(name, yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        @@all << self
    end 

    #class methods
    def self.all
        @@all
    end 

    #instance methods
    def new_meal(customer, total, tip = 0)
        Meal.new(self, customer, total, tip)
    end 

    def meals
        Meal.all.select { |meal| meal.waiter == self }
    end 

    def best_tipper
        meals.max do |meal_1, meal_2| 
            meal_1.tip <=> meal_2.tip 
        end.customer 
    end 

end