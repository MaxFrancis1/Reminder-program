#@tasks = [] 
@tasks = {
  "task" => "placeholdertask", "deadline" => "Friday"
}
# empty array to be added to 


def view_list # method to load the list for the user
  @tasks.each do |key, value|
    puts "#{key}: #{value}"
  end
end


def add_list # method to add an item to the list
puts "Please enter a task below:"
task = gets.chomp
  while !task.empty? do  # loop to get another item on the list
    @tasks << task # adds teh user input to the empty tasks array
    puts "You have added #{task} to your list"
    puts ""
    puts "Now add another task to the list"
    task = gets.chomp # second input
  end
end

def delete_list # method to delete an item from the list

end

puts "Choose what you would like to do:" # user menu; puts all the options
puts "a) view list"
puts "b) add to list"
puts "c) delete from list"

option =  gets.chomp # takes the selection from the menu

if option == "a" # what to do for each menu input
  puts "You have selected: view list" 
  view_list
  elsif option == "b"
    puts "You have selected: add to list"
    add_list
  elsif option == "c"
    puts "You have selected: delete from list"
    delete_list
end

