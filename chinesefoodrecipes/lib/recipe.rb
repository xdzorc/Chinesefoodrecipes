class Recipe
    attr_accessor :name, :each_url, :description, :prep_time, :cooking_time, :difficulty_level, :ingredients, :steps
    @@all=[]
    
    def initialize(hash)
        hash.each do |key, value|
          self.send("#{key}=", value)
        end
        @@all << self
    end

    def self.all
        @@all
    end

    def add_recipe_attributes(attributes_hash)
        attributes_hash.each do |key, value|
            self.send("#{key}=", value)
        end
        self 
    end
end


