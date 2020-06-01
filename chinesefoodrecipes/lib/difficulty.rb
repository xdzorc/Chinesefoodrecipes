class Difficulty
  attr_accessor :name
  @@all =[]

  def difficulties
    Recipe.all.select {|recipe| recipe.difficulty_level=="Easy" || recipe.difficulty_level=="Medium" }
  end

  def difficulty(choice)
    recipes_with_difficulty =difficulties.select {|recipe| recipe.difficulty_level==choice}
    recipes_with_difficulty.each_with_index do |recipe,index|
        puts "#{index+1}.  #{recipe.name}".magenta
        @@all << recipe
    end
  end

  def self.all
    @@all
  end
end