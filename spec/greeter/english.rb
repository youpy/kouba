module Greeter
  class English
    def initialize(options = {})
      @prefix = options[:prefix]
    end

    def greet(name)
      prefix + 'hello, ' + name
    end

    private

    attr_reader :prefix
  end
end
