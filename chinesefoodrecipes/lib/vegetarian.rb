

class Vegetarian
  @@all=[]
  def vegetarian_recipes
    # @@all = Recipe.all.select {|recipe| recipe.name.include?("Vegetable") }
    recipes_with_vegetable = Recipe.all.select {|recipe| recipe.name.include?("Vegetable")}
    # @@all.each_with_index do |recipe,index|
    recipes_with_vegetable.each_with_index do |recipe,index|
      puts "#{index+1}.  #{recipe.name}".magenta
      @@all << recipe
    end
  end

  def self.all 
    @@all
  end

end