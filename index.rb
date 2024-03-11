# frozen_string_literal: true

require 'thor'

# Define a class that inherits from Thor
class MyCLI < Thor
  desc 'hello NAME', 'say hello to NAME'

  def hello(name)
    puts "Hello #{name}"
  end
end

MyCLI.start(ARGV)
