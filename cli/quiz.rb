#!/usr/bin/env ruby

require 'thor'

# Provides learning and quizzing functionality from json databases
module QuizGem
  # Creates the CLI
  class Quiz < Thor
    desc 'learn FILE', 'Learn the questions in provided FILE'
    def learn(file)
      puts "You supplied the file: #{file}"
    end

    desc 'test FILE', 'Test yourself with the questions provided in the FILE'
    method_option :time, aliases: '-t',
                         desc: 'Set a time limit for the quiz',
                         type: 'numeric'
    def test(file)
      puts "You supplied the file: #{file}"
      timer = options[:time]

      # Read and Parse the JSON

      if timer
        puts 'This will be a timed test!'
        start = Time.now
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
    end

    desc 'flashcards FILE', 'Use a flashcard method
   to learn the questions in provided FILE'

    def flashcards(file)
      puts "You supplied the file: #{file}"
    end
  end
end

Quiz.start
