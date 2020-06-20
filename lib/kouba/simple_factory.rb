require "dry/inflector"

module Kouba
  module SimpleFactory
    def self.included(mod)
      mod.send(:module_function, :create)
      mod.send(:module_function, :find)
    end

    def find(name)
      inflector = Dry::Inflector.new
      children = constants.collect { |c| const_get(c) }.compact
      children.find do |child|
        inflector.underscore(child.name.split('::').last) == name
      end
    end

    def create(config)
      (find(config[:name])).new(config[:options])
    end
  end
end
