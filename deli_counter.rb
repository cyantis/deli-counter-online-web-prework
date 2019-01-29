require 'pry'

katz_deli = []
$ticket = 1

def line(katz_deli)
  line = []
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |who, index|
      line.push("#{index + 1}. #{who}")
    end
    puts "The line is currently: #{line.join(" ")}"
  end
end

def take_a_number(katz_deli)
  binding.pry
  #katz_deli is now an array of ticket numbers, not names
  katz_deli.push($ticket)
  puts "Welcome, you are ticket number #{$ticket}. You are number #{katz_deli.length} in line."
  $ticket += 1
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end

array = []
take_a_number(array)
take_a_number(array)
now_serving(array)
now_serving(array)
take_a_number(array)
