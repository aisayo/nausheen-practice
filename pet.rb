# create a pet class
# each pet will have a name and species 
# species can not be changed 
# need to save all objects so class can track 
require 'pry'

class Pet

    attr_accessor :name 
    attr_reader :species

    # scope of this class variable is the class 
   @@all = []


   # what method will automatically invoke initialize => .new

   def initialize(pet_name, pet_species)
    @name = pet_name
    @species = pet_species 
    save 
   end 

   def save 
    @@all << self #self is the new instance
   end 
   
end

#using pry 
    # Pet.new
    # binding.pry
    # puts ""


# creating a new instance => .new
# .new is called on the class like Pet.new => new instance/object
# .new is a default Ruby method 


fluffy = Pet.new("fluffy", "cat")
binding.pry
puts ""