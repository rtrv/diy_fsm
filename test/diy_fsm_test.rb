# frozen_string_literal: true

require_relative "test_helper"
require_relative "./"

class DiyTest < Minitest.test
  def test_diy
    user = User.new

    assert_equal user.state, :blocked
  end
end
