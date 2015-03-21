require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(:color => true)]

def capture
  out, err = capture_subprocess_io do
    yield
  end
  out
end