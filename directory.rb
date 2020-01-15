#students = [
#  {name: "Dr. Hannibal Lecter", cohort: :november},
#  {name: "Darth Vader", cohort: :november},
#  {name: "Nurse Ratched", cohort: :november},
#  {name: "Michael Corleone", cohort: :november},
#  {name: "Alex DeLarge", cohort: :november},
#  {name: "The Wicked Witch of the West", cohort: :november},
#  {name: "Terminator", cohort: :november},
#  {name: "Freddy Krueger", cohort: :november},
#  {name: "The Joker", cohort: :november},
#  {name: "Joffrey Baratheon", cohort: :november},
#  {name: "Norman Bates", cohort: :november},
#]
@students = []

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def process(selection)
  case selection
  when "1"
    @students = input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't know what to do with that input..."
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_names
  print_count
end

def input_students
  puts "Please enter the name of the students"
  puts "To finish, please hit return twice."

  name = gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"

    name = gets.chomp
  end
  @students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_names
  @students.each do |x|
    puts "#{x[:name]} (#{x[:cohort]} cohort)"
  end
end

def print_count
  puts "Overall we have #{@students.count} great students"
end


interactive_menu
