def choose_from_all
  list_all_dishes
  puts "Please choose the dish number of your interest(1~49),or type exit to return to the menu."
  choice=gets.strip 
  while choice!="exit"
    if (choice.to_i-1).between?(0,48)
      puts "#{Recipe.all[choice.to_i-1].name}".magenta
      puts "Description:  "+ "#{Recipe.all[choice.to_i-1].description}"
      puts "------------------------------------"
      puts "------------------------------------"
      puts "Ingredients:"
      Recipe.all[choice.to_i-1].ingredients.each_with_index do |ingredient, index|
        puts "         " + "#{index+1}.  #{ingredient}"
      end
      puts "------------------------------------"
      puts "------------------------------------"
      puts "Cooking steps:  "
      Recipe.all[choice.to_i-1].steps.each_with_index do |step, index|
        puts "         " + "#{index+1}.  #{step}"
      end
    end
    puts "Would you like another one?(1~49) or type exit to return to the menu."
    choice =gets.strip
  end
end