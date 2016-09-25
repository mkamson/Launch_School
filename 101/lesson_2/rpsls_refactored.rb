VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts "=> #{message}"
end

def rock_win?(first, second)
  (first == 'rock' && second == 'scissors' || "lizard")
end

def paper_win?(first, second)
  (first == "paper" && second == "rock" || "spock")
end

def scissors_win?(first, second)
  (first == "scissors" && second == "paper" || "lizard")
end

def lizard_win?(first, second)
  (first == "lizard" && second == "spock" || "paper")
end

def spock_win?(first, second)
  (first == "spock" && second == "rock" || "scissors")
end

def win?(first, second)
  rock_win?(first, second) ||
    paper_win?(first, second) ||
    scissors_win?(first, second) ||
    lizard_win?(first, second) ||
    spock_win?(first, second)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt('You won this round!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt('This round is a tie!')
  end
end

choice = ' '
player_score = ' '
computer_score = ' '

def short_version_of_choice(word)
  case word
  when "R"  then 'rock'
  when 'P'  then 'paper'
  when 'SC' then 'scissors'
  when 'L'  then 'lizard'
  when 'SP' then 'spock'
  end
end

def player_says_yes?(reply)
  reply.casecmp("y").zero? || reply.casecmp("yes").zero?
end

def player_says_no?(reply)
  reply.casecmp("n").zero? || reply.casecmp("no").zero?
end

player_score = 0
computer_score = 0
round_tie_score = 0

loop do
  loop do
    player_choice_prompt = <<-MSG
      Choose one:
        r for rock
        p for paper
        sc for scissors
        l for lizard
        sp for spock
    MSG
    prompt(player_choice_prompt)
    user_input = gets.chomp.upcase
    choice = short_version_of_choice(user_input)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Invalid choice!")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts "You chose: #{choice}; Computer chose: #{computer_choice}"

  display_result(choice, computer_choice)

  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  else
    round_tie_score += 1
  end
  prompt("Your Score is #{player_score}")
  prompt("Computer Score is #{computer_score}")
  break if player_score + computer_score + round_tie_score == 5

  play_again = true
  loop do
    prompt('Do you want to play again?')
    answer = gets.chomp
    if player_says_yes?(answer)
      break
    elsif player_says_no?(answer)
      play_again = false
      break
    else
      prompt("Invalid choice! Please eneter YES or NO")
      prompt("")
    end
  end
  break unless play_again
end

if player_score > computer_score
  prompt("You won the game with #{player_score} in best of
  #{player_score + computer_score + round_tie_score} rounds.")
elsif computer_score > player_score
  prompt("The computer won the game with #{computer_score} in best of
  #{player_score + computer_score + round_tie_score} rounds.")
else
  prompt("The game was tied #{player_score} - #{computer_score} ")
end
prompt('Thank you for playing. Goodbye!')
