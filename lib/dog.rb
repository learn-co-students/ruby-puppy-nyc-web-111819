require 'pry'
class Dog
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        save()
    end
    def self.clear_all
        @@all = []
    end
    def save
        @@all << self
    end
    def self.all
        @@all.uniq!
        @@all
    end
    def self.print_all
        @@all.uniq!
        for x in @@all do
            puts x.name
        end
    end
end
