require 'test_helper'
require 'family'

describe Family do
  it "prints every memeber of the family" do
    family = Family.new "Jackson"

    family.add_father "John"
    family.add_mother "Jane"

    3.times do |i|
      family.add_child "Child #{i}", "F"
    end

    output = capture do
      family.each_member do |member|
        puts family.full_name member
      end
    end

    output.must_equal <<EOF
John Jackson
Jane Jackson
Child 0 Jackson
Child 1 Jackson
Child 2 Jackson
EOF
  end
end