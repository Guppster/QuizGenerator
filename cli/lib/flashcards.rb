require 'thor/group'

module QuizGem
  # Handles a Flashcard flow
  class Flashcards < Thor::Group
    desc 'Practice questions provided in the FILE using flashcards'

    argument :file

    def main
      puts "You supplied the file: #{file}"
    end
  end
end
