require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(MESSAGES['welcome'])

name = ' '
loop do
  name = gets.chomp

  if name.empty?()
    prompt(MESSAGES['validate_name'])
  else
    break
  end
end

prompt(MESSAGES['greeting'] + " #{name}")

loop do # main loop
  number1 = ' '

  loop do
    prompt(MESSAGES['request_first_number'])
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  number2 = ' '

  loop do
    prompt(MESSAGES['request_second_number'])
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    Enter:
    1 for Add
    2 for Subtract
    3 for Multiply
    4 for Divide
  MSG

  prompt(operator_prompt)

  operator = ' '

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['invalid_operator'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt(MESSAGES['result'] + " #{result}")

  prompt(MESSAGES['another_calculation?'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['final_goodbye'] + " #{name}!")
