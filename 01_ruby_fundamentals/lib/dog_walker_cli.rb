def start_cli
  puts "Hi there! Welcome to the Dog Walker CLI!".green
end

# define a method `print_menu_options` which outlines the user's
# choices. The choices will be displayed as a numbered list like so:
#   1. List all dogs
#   2. Add a dog
# At any time, type "menu" to see these options again or "exit" to
# leave the program
def print_menu_options
  puts "Here are your options:
  1. List all dogs
  2. Add a dog"
  puts "Please choose an option. At any time, type 'menu' to see these options again, or 'exit' to leave the program"
end



# define a method `ask_for_choice` which prompts the user for input
# if the user types "exit" we'll print a message thanking them
# for using the CLI and invoke exit to terminate the program
# otherwise, return whatever the user typed in
def ask_for_choice
  input = gets.chomp # chomp removes whitespace
  if input == "exit" # input is a variable name
    puts "Thanks for using the Dog Walker CLI - buh bye!"
    exit
  end
  input
end


# define a `print_dog` method that accepts a dog hash as a parameter
# and prints out the dog's details that looks like this:
=begin
  
Lennon Snow
  Age: Almost 2
  Breed: Pomeranian
  Image URL: https://res.cloudinary.com/dnocv6uwb/image/upload/v1609370267/dakota-and-lennon-square-compressed_hoenfo.jpg

=end

def print_dog dog_hash 
  puts
  puts dog_hash[:name].green
  puts "   Age: #{dog_hash[:age]}".yellow
  puts "   Breed: #{dog_hash[:breed]}".blue
  puts "   Image URL: #{dog_hash[:image_url]}".black
  puts
end




# define a method `list_dogs` that will iterate over an array of
# dog hashes and call print_dog on each one.
def list_dogs(dog_arr)
  dog_arr.each do |dog_hash|
    print_dog(dog_hash)
  end
  "bye"
end


# define an `add_dog` method which accepts an array of dog
# hashes as an argument. It should:
# ask the user for input of the
# dog's name, age, breed and image_url. 
# Take this information and put it into a hash
# add the hash to the dogs array passed as an argument
# print the newly added dog
def add_dog dogs
  print "Please enter your dog's name: " # print doesn't add a new line
  name = ask_for_choice

  if name == "menu"
    return
  end

  print "Please enter your dog's age: " # print doesn't add a new line
  age = ask_for_choice

  if age == "menu"
    return
  end

  print "Please enter your dog's breed: " # print doesn't add a new line
  breed = ask_for_choice

  if breed == "menu"
    return
  end
  
  print "Please enter your dog's image url: " # print doesn't add a new linee
  image_url = ask_for_choice

  if image_url == "menu"
    return
  end

  new_dog = {name: name, age: age, breed: breed, image_url: image_url}

  dogs.push(new_dog)
  # the below does the same thing using the shovel operator
  # dogs << {:name => name, :age => age, :breed => breed, :image => image_url}

  puts "Your dog has been added successfully"

  print_dog(new_dog)
end


# define a method `handle_choice` which will take a `choice` as a 
# parameter and handle it in the appropriate way based on the menu
# option that was chosen
def handle_choice(choice)
  if choice == "1"
    list_dogs($dogs)
  elsif choice == "2"
    add_dog($dogs)
  elsif choice == "debug"
    binding.pry
  elsif choice == "menu"
    print_menu_options
  else 
    puts "Stimpy, you idiot! Try again.."
  end
end
