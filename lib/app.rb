# frozen_string_literal: true

require 'thor'

# Define a class that inherits from Thor
class App < Thor
  desc 'hello [NAME]', 'say hello to NAME'
  long_desc <<~LONGDESC
    `app hello` will print out a message to a person of your choosing.

    You can optionally specify a second parameter, which will print out a from message as well.

    > $ app hello "John Doe" "Jane Doe"
    \x5>
    \x5> Hello John Doe
    \x5> from Jane Doe
  LONGDESC
  def hello(name, from = nil)
    puts "Hello #{name}"
    puts "from #{from}" if from
  end

  desc 'version', 'print the version'
  def version
    puts '1.0.0'
  end
end
