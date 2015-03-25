require 'test_helper'
require 'video'
require 'proxy'
require 'exceptions/forbidden_access_error'

describe VideoAuthenticationProxy do
  it "allows privileged user to access  the video" do
    video = Video.new "VName", "VDesc"
    proxy = VideoAuthenticationProxy.new video, "Privileged"

    capture { proxy.play }.must_include "VName"
    capture { proxy.play }.must_include "VDesc"
  end

  it "forbids regular users to access the videos" do
    video = Video.new "VName", "VDesc"
    proxy = VideoAuthenticationProxy.new video, "NotPrivileged"

    -> { proxy.play }.must_raise ForbiddenAccessError
  end
end