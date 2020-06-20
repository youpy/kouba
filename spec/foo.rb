module Foo
  include Kouba::SimpleFactory
  name_key :xxx

  class Bar
    def initialize(options = {}); end
    def message; 'foo'; end
  end
end
