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

def input_students
  puts "Please enter the name of the students"
  puts "To finish, please hit return twice."

  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"

    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_names(names)
  names.each.with_index(1) do |x, y|
    puts "#{y}. #{x[:name]} (#{x[:cohort]} cohort)"
  end
end

def print_count(names)
  puts "Overall we have #{names.count} great students"
end
students = input_students
print_header
print_names(students)
print_count(students)
