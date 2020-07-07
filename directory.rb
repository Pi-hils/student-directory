# student_count = 11
#let's put all students into an array
students = [
    {name: "Dr. Hannibal Lecter", cohort: :november},
    {name: "Darth Vader", cohort: :november},
    {name: "Nurse Ratched", cohort: :november},
    {name: "Michael Corleone", cohort: :november},
    {name: "Alex DeLarge", cohort: :november},
    {name: "The Wicked Witch of the West", cohort: :november},
    {name: "Freddy Krueger", cohort: :november},
    {name: "Terminator", cohort: :november},
    {name: "The Joker", cohort: :november},
    {name: "Joffrey Barathon", cohort: :november},
    {name: "Norman Bates", cohort: :november}
]

# create an empty array accessible to all methods
@students = []

def print_header
  puts "The students of Villains Academy"
  puts "--------------------"
end

# def print(names)
#   names.each do |name|
#    puts name
#  end
# end
#
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have  #{@students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  # return the array of students
  @students
end

@students = input_students
print_header
# print(students)
print_footer(students)


def save_students
  #open the file for writinng
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
     student_date = [student[:name], student[:cohort]]
     csv_line = student_data.join(",")
     file.puts csv_line
   end
  file.close
end
