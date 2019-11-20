# Add your code here
require 'pry'
class Dog

    attr_accessor :name
    attr_reader :save

    @@all = []
    @@name = []

    # def save (dog)
    #     @@all << dog
    # end

    def save
        @@all << self
    end

    def initialize (name)
        @name = name
        # self.save = self
        save
        @@name << name
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
        @@name.clear
    end

    def self.print_all
        @@name.each do |dog|
            puts dog
        end
    end

 
end

