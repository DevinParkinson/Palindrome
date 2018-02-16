require 'pry'
@words = []
@reverse = []

def menu
  puts "Welcome to palindromia"
  puts "1. See if a  word is a palindrome\n2. Exit"
  choice = gets.to_i
end

def check
  puts "what word would you like to see is a palindrome?"
  entry = gets.strip.downcase.split("")
  @words.push(entry)
  reverse_string
end

def reverse_string
  reverse = @reverse
  @words.size.times { reverse << @words.pop }
  reverse.join
  puts reverse
  binding.pry
  menu
end

def exit_program
  exit
end

while true
  case menu
  when 1
    check
  when 2
    exit_program
  end
end
