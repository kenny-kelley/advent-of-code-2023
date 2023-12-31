# frozen_string_literal: true

require_relative 'lib/advent_of_code_2023/version'

Gem::Specification.new do |spec|
  spec.name = 'advent_of_code_2023'
  spec.version = AdventOfCode2023::VERSION
  spec.authors = ['Kenny Kelley']
  spec.email = ['16879853+kenny-kelley@users.noreply.github.com']

  spec.summary = 'Advent of Code 2023 solutions written in Ruby'
  spec.homepage = 'https://github.com/kenny-kelley/advent-of-code-2023'
  spec.required_ruby_version = '>= 3.2.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = 'bin'
  spec.executables << 'advent-of-code-2023'
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
