def countdown num
  if num < 1
    puts "Happy New Year!"
  else 
    puts "#{num}!"
    countdown(num-1)
  end
end




