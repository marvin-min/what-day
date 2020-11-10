require "what/day/version"

module What
  module Day
    class Error < StandardError; end
    def calc(date)
      unless date.nil? && date.is_a?(Time)
        raise Error.new("param 'date' should be a Time type")
      else
        date.strftime('%A')
      end
    end
  end
end
