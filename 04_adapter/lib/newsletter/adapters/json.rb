module Newsletter
  module Adapters
    class Json
      def initialize source
        @source = source
      end

      def parse
        json = JSON.parse @source
      end
    end
  end
end