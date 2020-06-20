module Greeter
  class English
    def initialize(options = {})
      @suffix = options[:suffix]
    end

    def greet(name)
      'hello, ' + name + suffix
    end

    private

    attr_reader :suffix
  end
end
