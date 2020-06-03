def random_recipe
  input = ""
  while input != "exit"
    choice = Recipe.all.sample
    puts "#{choice.name}".bold.magenta.on_light_blue
    puts ""
    puts "Description:".bold.magenta.on_light_blue + "  " +"#{choice.description}"
    puts "------------------------------------".green
    puts "------------------------------------".green
    puts "Ingredients:".bold.magenta.on_light_blue
    choice.ingredients.each_with_index do |ingredient, index|
      puts "         " + "#{index+1}.  #{ingredient}"
    end
    puts "------------------------------------".green
    puts "------------------------------------".green
    puts "Cooking steps:".bold.magenta.on_light_blue
    choice.steps.each_with_index do |step, index|
      puts "         " + "#{index+1}.  #{step}"
    end
    puts "------------------------------------".green
    puts "------------------------------------".green
    puts ""
    puts "Would you like anothe random recipe?(type exit to return to the menu, anything else for yes)".green
    input = gets.strip
  end  
end 