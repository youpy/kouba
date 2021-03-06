# coding: utf-8
require_relative './greeter'
require_relative './foo'

RSpec.describe Kouba do
  it "has a version number" do
    expect(Kouba::VERSION).not_to be nil
  end

  it 'instantiates' do
    expect(Foo.create(
      xxx: 'bar'
    ).message).to eql('foo')

    greeter = Greeter.create(
      greeter: 'japanese',
      options: {
        suffix: '!!'
      }
    )

    expect(greeter.greet('foo')).to eql('こんにちは、foo!!')

    greeter = Greeter.create(
      greeter: 'english',
      options: {
        prefix: '!!!'
      }
    )

    expect(greeter.greet('foo')).to eql('!!!hello, foo')
  end

  context 'without options' do
    it 'instantiates' do
      greeter = Greeter.create(
        greeter: 'japanese'
      )

      expect(greeter.greet('foo')).to eql('こんにちは、foo')
    end
  end
end
