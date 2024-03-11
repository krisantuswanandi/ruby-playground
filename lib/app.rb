# frozen_string_literal: true

require 'thor'
require_relative 'cmd/version'
require_relative 'cmd/hello'

# Define a class that inherits from Thor
module App
  class App < Thor
    class_option :lang, aliases: ['l'], desc: 'Specify the language', default: 'EN'

    include Hello
    include Version
  end
end
