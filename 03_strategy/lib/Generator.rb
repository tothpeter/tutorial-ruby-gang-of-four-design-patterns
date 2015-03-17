module Newsletter
  module Generators
    class Base
      attr_reader :format, :title, :phrase

      def initialize format = :html
        @format = format
        @title = "Hello world!"
        @phrase = "lorem ipsum"
      end

      def render
        name = format.to_s.capitalize
        strategy = Newsletter::Generators.const_get(name).new self
        strategy.execute
      end
    end
  end
end