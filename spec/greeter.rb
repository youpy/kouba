module Greeter
  include Kouba::SimpleFactory
  name_key :greeter
end

Dir[File.expand_path(File.dirname(__FILE__) + '/greeter/*.rb')].sort.each do |file|
  require file
end
