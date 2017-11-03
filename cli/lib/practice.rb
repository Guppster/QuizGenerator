
require 'thor/group'

module QuizGem
  # Handles a Practice flow
  class Practice < Thor::Group
    desc 'Practice with the questions provided in the FILE'

    argument :file

    def main
      puts "You supplied the file: #{file}"
    end
  end
end
