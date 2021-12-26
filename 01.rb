# frozen_string_literal: true

# --- Day 10: Syntax Scoring ---

require 'debug'

filename = $PROGRAM_NAME.gsub(/\.rb$/, '')
input = File.readlines("./#{filename}.in", chomp: true).map!(&:to_i)
input.map { |n| [2020 - n, n] }.tap do |differences|
  puts differences.select! { |n, _| input.include?(n) }.first.reduce(:*)
end
