require 'test_helper'
require 'video'

describe Video do
  let(:video_name)  { "Welcome to Tuts+" }
  let(:description) { "In this lesson you'll learn..." }
  let(:video) { Video.new video_name, description }

  it "shows the name" do
    capture { video.play }.must_include video_name
  end

  it "shows the description" do
    capture { video.play }.must_include description
  end
end