require 'thor/group'

module QuizGem
  # Handles a single query for a Quiz
  class Query < Thor::Group
    desc 'A single query in a Quiz'

    def one
      puts 1
    end

    def two
      puts 2
    end

    def three
      puts 3
    end
  end
end
