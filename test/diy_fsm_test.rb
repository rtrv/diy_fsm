# frozen_string_literal: true

require_relative "test_helper"
# require_relative "../lib/**/*"
require_relative "fixtures/user"

class DiyFsmTest < Minitest::Test
  def test_diy
    user = User.new

    # FIXME
    assert_equal user.state, :blocked
    assert_equal user.blocked?, true
    assert_equal user.moderating?, false
  end
end
