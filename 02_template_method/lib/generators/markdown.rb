module Newsletter
  module Generators
    class MARKDOWN < Generator
      def header
        "# Hello world!"
      end

      def content
        "lorem ipsum"
      end
    end
  end
end