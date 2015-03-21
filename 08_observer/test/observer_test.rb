require 'test_helper'
require 'user'

module Application
  describe User do
    let(:user) { User.new "tomaaanet.com", "Toma Bombadil", "Software Designer" }

    it "notifies spectators of changes to the user" do
      observer = Minitest::Mock.new
      observer.expect :updated, nil, [ user ]

      user.subscribe observer
      user.update :username, "tomaaa.com"

      observer.verify
    end

    it "prints the contents of the changed user" do
      observer = UserObserver.new
      user.subscribe observer

      capture { user.update :username, "newusername" }.
        must_include "newusername"
    end
  end
end