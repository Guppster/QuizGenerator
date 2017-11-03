require 'thor/group'

module QuizGem
  # Handles a single query for a Quiz
  class Query < Thor::Group
    desc 'A single query in a Quiz'

    def main
      # Ask Question
      # Wait for Answer
      # Compare result to solution
      # Increment score if correct
    end
  end
end
