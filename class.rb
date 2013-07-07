#Authors from GITHUB
# WBVG
# mickyj
# Our code is here => https://github.com/mickyj/day3lab
# Please enjoy our random group distributor ~ From the boys!

# Enter the # of Students: Our Array is split and shuffled all in one line of code.
# If number of students = 13, edit the first group size arguement value, ie, 13 ||
students = 'Mike Will Ryan Andrew Daniel Michael Tarun Hui Sanjita Dan Stephen Jack Nick'.split.shuffle


# This is the menu user prompt
puts "What is your group size?"
group_size = gets.chomp.to_i

# Here we define false values for error prompting to user and return to main menu until correct values are parsed
while   group_size > 13 ||  group_size < 1
            puts "Group size must be between 1 and 13. Please enter your group size"
            group_size = gets.chomp.to_i
end

# Our equations: we use .size to measure off students into each group evenly
number_of_groups = (students.size) / group_size.to_i

# Here we evenly distribute students into groups defined by user input.
      number_of_groups.times do
              puts "Names for this group"

# Each time the group runs we delete off the even distribution of students using pop method
      group_size.times do
              puts students.pop
      end
end

# Add the 1 lonely student to the last group using a push
if students != nil
  puts students.push
end

# voila!



