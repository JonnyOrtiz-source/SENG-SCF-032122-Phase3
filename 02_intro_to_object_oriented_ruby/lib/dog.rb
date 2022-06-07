class Dog
    def initialize(name, age, breed, image_url)
        @name = name
        @age = age
        @breed = breed
        @image_url = image_url
    end

    # synctactic sugar: allows reading and writing, replacing getter and setter code.
    attr_accessor :name, :age, :breed, :image_url

    # # getter, aka attr_reader
    # def name
    #     @name
    # end

    # # setter, aka attr_writer
    # def name=(name)
    #     @name = name
    # end

    def walk
        @last_walked_at = Time.now
    end

    def feed
        @last_fed_at = Time.now
    end

    def needs_a_walk?
        if @last_walked_at
            !last_walked_at.between(4.hours.ago, Time.now)
        else
            true
        end
        
    end

    def print
        puts ""
        puts self.name
        puts "  age: #{self.age}"
        puts "  breed: #{self.breed}"
        puts "  image url: #{self.image_url}"
        puts "  last walked at: #{self.last_walked_at}"
        puts "  last fed at: #{self.last_fed_at}"
        puts ""
    end
end