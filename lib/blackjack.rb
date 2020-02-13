def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
   card_total = 0
   
   2.times do
     card = deal_card
     card_total += card
   end
   display_card_total(card_total)
   
   return card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  choice = get_user_input
  
  while choice != "h" || choice != "s" do
    invalid_command
    prompt_user
    choice = get_user_input
  end
  if choice == "h"
    card_total += deal_card
  end
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
