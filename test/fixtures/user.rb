# frozen_string_literal: true

require_relative "../../lib/diy_fsm"

class User
  include DiyFsm

  fsm do
    # states: blocked, unblocked, moderating
    # events: block, moderate, unblock
    state :blocked, initial: true
    state :moderating

    # event :moderate do
    #   transition from: :blocked, to: :moderating
    # end

    # event :block do
    #   transition from: :unblocked, to: :blocked
    # end

    # event :unblock do
    #   transition from: :moderating, to: :unblocked
    # end
  end
end
