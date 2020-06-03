def choose_from_all
  choice = ""
  while choice != "exit"
    puts "Please choose the dish number of your interest(1~49),or type exit to return to the menu.".green
    puts ""
    list_all_dishes
    choice = gets.strip 
    while (choice.to_i-1).between?(0,48)
      puts "#{Recipe.all[choice.to_i-1].name}".bold.magenta.on_light_blue
      puts ""
      puts "Description:".bold.magenta.on_light_blue + "  " + "#{Recipe.all[choice.to_i-1].description}"
      puts "------------------------------------".green
      puts "------------------------------------".green
      puts "Ingredients:".bold.magenta.on_light_blue
      Recipe.all[choice.to_i-1].ingredients.each_with_index do |ingredient, index|
        puts "         " + "#{index+1}.  #{ingredient}"
      end
      puts "------------------------------------".green
      puts "------------------------------------".green
      puts "Cooking steps:".bold.magenta.on_light_blue
      Recipe.all[choice.to_i-1].steps.each_with_index do |step, index|
        puts "         " + "#{index+1}.  #{step}"
      end
      puts "------------------------------------".green
      puts "------------------------------------".green
      puts ""
      puts "Would you like another one?(1~49) or type exit to return to the menu.".green
      puts ""
      list_all_dishes
      choice = gets.strip
    end
  end
end