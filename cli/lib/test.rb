
require 'thor/group'

module QuizGem
  # Handles a Test flow
  class Test < Thor::Group
    desc 'Test yourself with the questions provided in the FILE'

    argument :file

    class_option :time, aliases: '-t',
                        desc: 'Set a time limit for the quiz',
                        type: 'numeric'


    def two
      puts "You supplied the file: #{file}"
      timer = options[:time]

      # Read and Parse the JSON

      if timer
        puts 'This will be a timed test!'
        start = Time.now
        puts start
      else
        puts 'This test will not be timed'
      end

      # Start Quiz loop

      # Ask Question
      # Wait for Answer
      # Compare result to solution
      # Increment score if correct
      # If timer == true, and Time.now - start > timer, end Quiz. Print sad face

      # Compare score to total score and show
      puts 2
    end

    def three
      puts 3
    end
  end
end
