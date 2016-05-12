######################
#  MEDIEVAL MADNESS  #    # In search for a new name.
# Written by /u/IIFO #
######################

# this function is called if we want the player to die
def dead(death) # the variable 'death' is meant to be a string. It isn't necesary to have one, though.
  puts death, "You're dead." # it prints the explanation, adds a line and prints "you're dead."
end

# First game stage
def home
  puts "You wake up. There is someone on the street screaming."
  puts "That sounded exactly like when someone eats a brain. Yes, that's exactly that sound."
  puts "You take the sword and open the door. There is a zombie in front of you."
  puts "What do you do?"
  print "> " # prints that character and doesn't add a line, so we can know when we have to type
  # We can't pass right now
  freeway = false
  input = $stdin.gets.chomp # Lets us input text
  if input == "hit" || input == "attack"
    puts "You hit the zombie with the sword, killing him."
    freeway = true # Now we can pass
  elsif input == "unicorn"
    # calls the funtion 'dead' and adds a message telling us why
    # we died.
    dead("WOW the magic of love made the zombie EVEN HUNGRIER. ")
  else
    # calls the funtion 'dead' and adds a message telling us why
    # we died.
    dead("You should have used that brain while you could. ")
  end

  # This happens if there is nothing in our way
  if freeway == true
    puts "There's a street on the left and one on the right."
    puts "Which way do you want to go?"
    print "> " # prints that character and doesn't add a new line, so we know when to type.
    input = $stdin.gets.chomp
    # if we say that we want to go to the left we call the left street
    # function and viceversa. Else we die of indecision.
    if input == "left"
      left_st
    elsif input == "right"
      right_st
    else
      dead("nope. ") # Calls the function 'dead' and adds an explanation
    end
  end
end

# This happens if we chose to go to the left street
def left_st
  puts "You go the left way. After running for your life a few meters you find a zombie eating a dude."
  puts "What will you do?"
  print "> " # prints this character and it doesn't add a new line, so we can know when we have to type stuff
  input = $stdin.gets.chomp # Text input
  # if what we typed in the text input matches any of this words...
  if input == "save" || input == "rescue" || input == "dude"
    dead("The zombie eats you instead. Congrats, you saved that dude!") # ...we call the function 'dead' and add a message.
  elsif input == "continue" || input == "ignore"
    puts "Now you're a bad person, but an alive bad person." # ...prints this two strings...
    puts "You go through the fortress door and you're now on the Bad Looking Forest."
    forest # ...and calls the function 'forest'
  # if the input didn't match any of the words above...
  else
    dead("That decision was so bad it killed you. ") # ...we call the function 'dead' and add that message
  end
end

# This happens if you went to the forest afer the left street.
def forest
  puts "After some hours of walking you see a giant zombie. You think it measures about a lot of meters."
  puts "What do you do?"
  print "> " # prints this character and doesn't add a new line, so we know when to type.
  input = $stdin.gets.chomp # A text input. This doesn't have conditionals because you will die
  # no matter what you type. May change this later.
  dead("Whoops. While you were typing he saw you and you were brutally killed by him. ")
end

# You chose the right street, this is what you get.
def right_st
  puts "You go the right way. There's a zombie in the middle of the street. What do you do?"
  print "> " # prints this character and doesn't add a line, so we know when to type.
  input = $stdin.gets.chomp # a text input
  # If we typed any of this words...
  if input == "hit" || input == "attack"
    dead("I forgot saying that this zombie is undefeatable.") # ...calls the function 'dead' and adds an explanation
  elsif input == "run" || input == "ignore" || input == "surround"
    puts "You saved your life! You walk a little bit and then another wild street appears."
    puts "Would you like to go through it?" # ...prints these strings
    print "> " # prints this character and doesn't add a line...
    input = $stdin.gets.chomp # ...so this text input is in the same line as the character.
    # if you typed any these words...
    if input == "yes"
      puts "You go through that street and end up at a seaport. You take a boat."
      sea # prints the string above and calls the function 'sea'
    elsif input == "no"
      puts "You continue through that street and pass the main gate. You are now on a road."
      road # prints the string above and calls the function 'road'
    # if we didn't type any of the above...
    else
      dead("Nope.") # It calls the function 'dead' and prints a string explaining why we died.
    end
  end
end

# This happens if you selected to change street on the last level.
def sea
  puts "Now you are on the sea. after some days you see a thing in the horizon."
  puts "After some time you can tell it's Nessie. What do you do?" # Let's overlook that Nessie is a lake monser, alright?
  print "> " # prints this character and doesn't add a line...
  input = $stdin.gets.chomp # so the character is in the same line as this text input.
  # if we typed any of this words...
  if input == "attack"
    dead("You aren't nearly as strong as the great Nessie!") # ...it calls the function 'dead' and adds this message.
  elsif input == "surround" || input == "circle"
    puts "Yay! You're alive!"
    puts "You reach a beach."
    beach # prints those strings and calls the function 'beach'
  # if what we typed didn't match any of the words above...
  else
    dead("That absolutely worked!") # ...it calls the function 'dead' and adds an explanation.
  end
end

# this happens if you decided to continue on the same street during the 'right_st' level
def road
  puts "You start walking with the hope of finding another city soon."
  puts "You suddenly see a horse. What do you do?"
  print "> " # prints that character and doesn't add a line...
  input = $stdin.gets.chomp # so it is on the same line as this text input.
  # if we typed any of this words...
  if input == "hide" || input == "ignore"
    dead("The rider haven't seen you. You continue walking for days until you starve.") # ...it calls the function 'dead' and adds that string.
  elsif input == "call" || input == "attack"
    puts "The rider stops and it happens to be a zombie rider. You kill him and get his horse."
    puts "After riding a couple of days you arrive at Cityopolis. You enter the city."
    cityopolis # ...calls the function 'cityopolis'
  # if what we typed didn't match any of the words above...
  else
    dead("That didn't work at all.") # ...we call the function 'dead' and add this string.
  end
end

# This happens if you passed the 'sea' stage.
def beach
  puts "After walking for some hours on the sand you see a city far away. You go there."
  cityopolis # we print that string and call the function 'cityopolis'.
end

# This happens if we pass the 'road' or 'beach' stages.
def cityopolis
  puts "OH NO! The city is being attacked by zombies. DO SOMETHING QUICKLY!!!!!!!!1"
  print "> " # prints that character and doesn't add a line so it is on the same line as the input below
  danger = true # Currently there is danger
  input = $stdin.gets.chomp # text input
  # if what we typed matches this words...
  if input == "save" || input == "kill"
    puts "You kill every single bad guy and save the day."
    danger = false # ...prints that string and tells the program that there isn't danger anymore.
  elsif input == "run" || input == "back"
    dead("You turn around to run but then a zombie eats you.") # ...calls the function 'dead' and adds that string
  # if any of the words match...
  else
    puts "I didn't understand you." # ...prints this string...
    cityopolis # ...and starts this function over
  end

  # This happens after the danger has passed
  if danger == false
    puts "The city major says thank you. He says they are going to do an expedition to kill"
    puts "the zombie king, Louis Charles the Great XXX. Asks you if you want to go. "
    print "> " # prints this string and doesn't add a line...
    input = $stdin.gets.chomp # ...so it is on the same line as this text input.
    if input == "yes"
      puts "The expedition starts tomorrow. "
      desert # calls the funciton desert
    else
      ##### MODIFY THIS #####
      dead("Major: What did you just say?!?!?!?!?!?1?!? KILL HIM!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1")
    end
  end
end

# This happens if we said that we wanted to go to the expedition
def desert
  puts "The next morning you wake up early and go with the rest of the city to the desert. After two days of walking through the desert on a horse with no name you find a evil cactus."
  puts "What do you do?"
  print "> " # prints this and doesn't add a line so it is on the same line as the input below.
  input = $stdin.gets.chomp
  # if what we typed matches any of this words, prints text and calls the 'creepy_forest' function
  if input == "nothing" || input == "ignore" || input == "continue" || input == "run"
    puts "The cactus is evil, but still is a cactus. It can't do anything. You continue your trip until you reach the creepy forest."
    creepy_forest
  # if what we typed didn't match any of the words above, it calls the function 'dead' and adds a string.
  else
    dead("That didn't work.")
  end
end

# this happens if we passed the desert.
def creepy_forest
  puts "After walking through the creepy forest you see a bear. What do you do?"
  print "> " # prints this character and doesn't add a string so it is on the same line as the input below.
  input = $stdin.gets.chomp
  bear_dead = false # this indicates that the bear hasn't died yet.
  # if any of this words match with what the user typed it says the bear has died.
  if input == "attack" || input == "hit" || input == "kill"
    puts "You attack the bear. It dies. "
    bear_dead = true
  # if what the player typed didn't match, we call the function 'dead' and add a string
  else
    dead("That didn't work. The bear eats you. ")
  end

  # this happens if the bear is dead.
  if bear_dead == true
    puts "You walk through the forest a few days more. Your food is over. What do you do?"
    print "> " # prints this character in the same line as the text input below.
    input1 = $stdin.gets.chomp
    food = false # it says that we are hungry
    ################ add a convinient grocery store
    if input1 == "hunt"
      puts "Great! Now you have food."
      food = true # now we aren't hungry.
    else
      dead("That didn't work, you starve.") # if what we typed didn't match any of the words above, we call the function dead and add a string.
    end
  end

  # if we aren't hungry we call the 'boss' function.
  if food == true
    puts "You keep walking a few more days until you see something far away. It looks like a really big head."
    puts "(SPOILER: It is) You walk there."
    boss
  end
end

# this happens if you passed the 'creepy_forest' stage.
def boss
  puts "You are now 4 meters away from the boss. What do you do?"
  print "> " # prints that character and doesn't add a line so it is on the same line as the input below.
  input = $stdin.gets.chomp
  # if what we typed matches any of this words...
  if input == "attack" || input == 'fight' || input == 'kill'
    puts "The cityopolis army attacks the giant zombie. He attacks back and kills half of the army"
    puts "What do you do?"
    print "> "
    input = $stdin.gets.chomp # text input
    if input == "attack"
    	puts "The giant zombie dies. Such a great boss, right?"
      ending # calls the ending function
    elsif input == "defense"
    	puts "The giant zombie attacks. He doesn't harm you at all."
      puts "What do you do?"
	    print "> "
      input == $stdin.gets.chomp # text input
      if input == "attack"
        puts "The zombie dies. You have saved the world!"
        ending # calls the ending function
      else
        dead("Oops, you screwed up.") # calls the 'dead' function and adds a string.
      end
    else
	     dead("That didn't seem to work.")
    end
  end
end

###### MODIFY DIALOGS IN THIS PART######
# this happens after you defeated the boss.
def ending
	puts "mayor: Oh, thank you, unknown hero. You saved the world against everyone expectations."
	puts "       Could you say us who you are? (yes or no)."
	print "> "
	input = $stdin.gets.chomp # text input
	if input == "no"
		puts "mayor: Ok."
		credits # calls the 'credits' function
	elsif input == "yes"
		puts "I'm Brian O'Hero and I'm so cool. "
		puts "You fly to the horizon in a very epic way. THE END"
		credits # calls the 'credits' funcion.
	end
end

# final credits.
def credits
	puts "YOU HAVE WON THE GAME!! Now you can say you are a MLG pro gamer. "
	puts "Game written by /u/IIFO in Ruby."
	puts "Thanks for playing!"
end

# it calls the 'home' function, so we can start the game.
home
