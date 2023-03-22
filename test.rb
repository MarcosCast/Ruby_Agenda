require 'open-uri'

class ExampleClass < AnotherClass
    attr_reader :foo, :bar
    attr_writer :baz, :ban
    attr_accessor :boom

    def initialize
        a_method(argi)
    end

    def a_method(argi)
        hello_world = 10
        hello_world = += 1
        SomeClass::AnotherClass.new(key: 10, another_key: "value")
        return :some_symbol

        ['ab', 'cd'].each do |item|
            puts item
        end
    end
end

s = ExampleClass.new
s.a_method(:foo)