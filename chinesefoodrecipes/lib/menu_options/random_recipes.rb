def random_recipe
    input=""
    while input!="exit"
        choice =Recipe.all.sample
        puts "#{choice.name}".magenta
        puts "Description:  "+ "#{choice.description}"
        puts "------------------------------------"
        puts "------------------------------------"
        puts "Ingredients:"
        choice.ingredients.each_with_index do |ingredient, index|
        puts "         " + "#{index+1}.  #{ingredient}"
        end
        puts "------------------------------------"
        puts "------------------------------------"
        puts "Cooking steps:  "
        choice.steps.each_with_index do |step, index|
        puts "         " + "#{index+1}.  #{step}"
        end
        puts "Would you like anothe random recipe?(type exit to return to the menu, anything else for yes)"
        input=gets.strip
    end
end 