def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def initial_round
  x = deal_card
  y = deal_card
  sum = x + y
  display_card_total(sum)
  return sum
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def hit?(number)
  prompt_user
  x = get_user_input
  if x == "s"
    new_number = number
    return new_number
  elsif x == "h"
    z = deal_card
    new_number = number + z
    return new_number
  else
    invalid_command
end
display_card_total(new_number)
return new_number
end

def invalid_command
  "Please enter a valid command"
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21
    hit?(sum)
    sum = hit?(sum)
  end
end_game(sum)
end

hit?(initial_round)
