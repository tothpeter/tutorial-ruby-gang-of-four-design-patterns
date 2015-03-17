require 'test_helper'
require 'generator'
require 'generators/html'
require 'generators/markdown'

module Newsletter
  describe Generators::Base do
    it "generates a newsletter in HTML" do
      final_result = File.read File.expand_path(
        "fixtures/newsletter.html",
        File.dirname(__FILE__)
      )

      Generators::Base.new(:html).render.must_include final_result
    end
    
    it "generates a report in MD" do
      final_result = File.read File.expand_path(
        "fixtures/newsletter.md",
        File.dirname(__FILE__)
      )

      Generators::Base.new(:markdown).render.must_include final_result
    end
  end
end