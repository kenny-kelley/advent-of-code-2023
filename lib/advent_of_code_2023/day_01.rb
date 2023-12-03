# frozen_string_literal: true

module AdventOfCode2023
  # Solutions for Day 1
  module Day01
    def self.solve
      puts '### Day 1 ###'
      puts

      input = File.read(File.join(File.dirname(__FILE__), '../../data/day_01/input.txt'))

      puts 'Part One Solution:'
      puts solve_part1(input)
      puts
    end

    def self.solve_part1(input)
      result = 0
      input.split("\n") do |line|
        nums = []
        line.split('') do |i|
          nums.append(i) if i =~ /\d/
        end
        result += "#{nums[0]}#{nums[-1]}".to_i
      end
      result
    end
  end
end
