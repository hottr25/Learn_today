# frozen_string_literal: true

require_relative "learn_today/version"
require_relative "learn_today/fact"
require_relative "learn_today/news"
require_relative "learn_today/joke"
require_relative "learn_today/cli"

module LearnToday
  class Error < StandardError; end
  Cli.start
end
