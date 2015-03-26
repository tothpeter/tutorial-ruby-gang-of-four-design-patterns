class Chief
  attr_reader :department

  def initialize options
    @department = options[:department]
  end
end