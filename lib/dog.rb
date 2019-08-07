require "pry"
class Dog   

    attr_accessor :name
    @@all = []

    
    def initialize(name)
        
        @name = name
        self.save
    end

    # def name (you can use Macros /attr_accessor for both (getter/reader)
    #     @name (& writter/setter methods)
    # end

    # def name= (name)
    #     @name = name
    # end
    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        @@all.each do |dog| 
            puts "#{dog.name}"
        end
    end

    def save 
        @@all << self
    end
    
end

