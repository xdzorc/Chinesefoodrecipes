def list_all_dishes
    Recipe.all.each_with_index do |recipe,index|
      puts "#{index+1}.  #{recipe.name}".magenta
    end
end