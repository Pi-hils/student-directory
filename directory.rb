# student_count = 11
#let's put all students into an array
students = [
    "Dr. Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Barathon",
    "Norman Bates"
]
#and then print them out
#First, we print the list of students
puts 'The students of Villains Academy'
puts '--------------------'
students.each do |student|
  puts student
end
#Finally, we print the total number of students
# puts "Overall, we have #{students.count} great students"
# puts students[0]
# puts students[1]
# puts students[2]
# puts students[3]
# puts students[4]
# puts students[5]
# puts students[6]
# puts students[7]
# puts students[8]
# puts students[9]
# puts students[10]
#It's important that print() doesn't add new characters
