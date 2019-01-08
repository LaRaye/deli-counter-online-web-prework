katz_deli = [ ]

def line(katz_deli)
  line_queue = [ ]
  
  if katz_deli.empty? == true
    puts "The line is currently empty."
    
  else
    katz_deli.each_with_index {|customer, index| line_queue << "#{index + 1}. #{customer}"}
    
    puts "The line is currently: #{line_queue.join(" ")}"
  end
end 

def take_a_number(katz_deli)
  number = katz_deli.size + 1
  katz_deli.push(number)
  
  puts "Welcome, you are number #{number}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
  
  else 
    puts "Currently serving #{katz_deli.shift}."
  end 
end

line = []
take_a_number(line)
take_a_number(line)
now_serving(line)
now_serving(line)