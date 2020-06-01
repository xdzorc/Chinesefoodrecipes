def choose_by_time
    choice=""
    while choice!="exit"
      puts "Please type in maximum time(mins) you are willing to spend(10~60), or tpye exit to return to the menu."
      choice=gets.strip
      if choice.to_i >=10 && choice.to_i<=60
        recipes=Time.new.time(choice)
        # binding.pry
        # puts "Please choose the dish number of your interest as listed,or type exit to return to choose time."
        # number=gets.strip
        number=""
        while number!="exit"
          puts "Please choose the dish number of your interest as listed,or type exit to return to choose time."
          number=gets.strip
          while (number.to_i-1).between?(0,recipes.size-1)
            puts "#{recipes[number.to_i-1].name}".magenta
            puts "Description:  "+ "#{recipes[number.to_i-1].description}"
            puts "------------------------------------"
            puts "------------------------------------"
            puts "Ingredients:"
            recipes[number.to_i-1].ingredients.each_with_index do |ingredient, index|
              puts "         " + "#{index+1}.  #{ingredient}"
            end
            puts "------------------------------------"
            puts "------------------------------------"
            puts "Cooking steps:  "
            recipes[number.to_i-1].steps.each_with_index do |step, index|
              puts "         " + "#{index+1}.  #{step}"
            end
            puts "------------------------------------"
            puts "------------------------------------"
            puts "Would you like another one? or type exit to return to choose time.".green
            Time.new.time(choice)
            number=gets.strip
          end
          # puts "Would you like another one? or type exit to return to choose time."
          # Time.new.time(choice)
          # number=gets.strip
        end
      end
    end
end
