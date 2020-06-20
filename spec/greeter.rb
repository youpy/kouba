module Greeter
  include Kouba::SimpleFactory
end

Dir[File.expand_path(File.dirname(__FILE__) + '/greeter/*.rb')].sort.each do |file|
  require file
end
