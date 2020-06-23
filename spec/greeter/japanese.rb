# coding: utf-8
module Greeter
  class Japanese
    def initialize(options = {})
      @suffix = options[:suffix] || ''
    end

    def greet(name)
      'こんにちは、' + name + suffix
    end

    private

    attr_reader :suffix
  end
end
