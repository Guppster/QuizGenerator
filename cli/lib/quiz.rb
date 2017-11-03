#!/usr/bin/env ruby

require 'thor'

require File.expand_path('lib/test', Dir.pwd)
require File.expand_path('lib/practice', Dir.pwd)
require File.expand_path('lib/flashcards', Dir.pwd)

# Provides learning and quizzing functionality from json databases
module QuizGem
  # Creates the CLI
  class Quiz < Thor
    desc 'learn FILE', 'Learn the questions in provided FILE'
    def learn(file)
      invoke QuizGem::Practice, [file]
    end

    desc 'test FILE', 'Test yourself with the questions provided in the FILE'
    method_option :time, aliases: '-t',
                         desc: 'Set a time limit for the quiz',
                         type: 'numeric'
    def test(file)
      invoke QuizGem::Test, [file], time: options[:time]
    end

    desc 'flashcards FILE', 'Use a flashcard method
   to learn the questions in provided FILE'
    def flashcards(file)
      invoke QuizGem::Flashcards, [file]
    end
  end
end
