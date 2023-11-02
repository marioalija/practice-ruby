# require "tty-link"

# puts TTY::Link.link_to("For anything you want to know go to: ", "https://google.com")
# =>
# TTY toolkit

require "tty-prompt"
prompt = TTY::Prompt.new

prompt.ask("What is your user_name?", default: ENV["USER"])
# => What is your name? (piotr)

user_input = prompt.mask("Enter your password :")
# => What is your secret? ••••
if user_input.length == 12
  pp "Correct"
elsif user_input.length > 12
  pp "Try again"
else
  pp "Completely wrong"
end
