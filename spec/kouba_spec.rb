# coding: utf-8
require_relative './greeter'

RSpec.describe Kouba do
  it "has a version number" do
    expect(Kouba::VERSION).not_to be nil
  end

  it 'instantiates according to the config' do
    config = {
      name: 'japanese',
      options: {
        suffix: '!!'
      }
    }

    greeter = Greeter.create(config)

    expect(greeter.greet('foo')).to eql('こんにちは、foo!!')

    config = {
      name: 'english',
      options: {
        prefix: '!!!'
      }
    }

    greeter = Greeter.create(config)

    expect(greeter.greet('foo')).to eql('!!!hello, foo')
  end
end
