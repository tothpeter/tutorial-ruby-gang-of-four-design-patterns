class Employee
  def initialize options = {}
    @chief = options[:chief]
  end

  def name
    "Name"
  end

  # def department_name
  #   @chief.department.name
  # end
  
  def method_missing *args, &block
    method = args.shift.to_s
    if method.include? "department_"
      correct_method = method.gsub("department_", "")
      @chief.department.send correct_method, *args, &block
      # @chief.department.send method.to_s.split("_")[1], *args, &block
    else
      super *args, &block
    end
  end
end