class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.print_all
    self.all.each { |i| puts "#{i.name}"}
  end

  def self.clear_all
    self.all.clear
  end
end
