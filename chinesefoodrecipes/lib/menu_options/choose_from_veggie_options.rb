def choose_from_veggie_options
  choice = ""
  while choice != "exit"
    puts "Please choose the vegetarian recipe by its number as listed, or tpye exit to return to the menu.".green
    puts ""
    Vegetarian.new.vegetarian_recipes
    choice = gets.strip
    while choice.to_i.between?(1,Vegetarian.all.size) 
      puts "#{Vegetarian.all[choice.to_i-1].name}".bold.magenta.on_light_blue
      puts ""
      puts "Description:".bold.magenta.on_light_blue + "  " + "#{Vegetarian.all[choice.to_i-1].description}"
      puts "------------------------------------".green
      puts "------------------------------------".green
      puts "Ingredients:".bold.magenta.on_light_blue
      Vegetarian.all[choice.to_i-1].ingredients.each_with_index do |ingredient, index|
        puts "         " + "#{index+1}.  #{ingredient}"
      end
      puts "------------------------------------".green
      puts "------------------------------------".green
      puts "Cooking steps:".bold.magenta.on_light_blue
      Vegetarian.all[choice.to_i-1].steps.each_with_index do |step, index|
        puts "         " + "#{index+1}.  #{step}"
      end
      puts "------------------------------------".green
      puts "------------------------------------".green
      puts ""
      puts "Would you like another one? or type exit to return to the menu.".green
      puts ""
      Vegetarian.new.vegetarian_recipes
      choice = gets.strip
    end
  end
end