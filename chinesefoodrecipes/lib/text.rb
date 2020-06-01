recipes_with_time.each_with_index do |x,index|
    puts "#{index}" +"#{x.name}" +"    " + "#{x.prep_time.to_i}" +"#{x.cooking_time.to_i}"
end