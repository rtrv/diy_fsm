# frozen_string_literal: true

require_relative "diy_fsm/version"

module DiyFsm
  def self.included(base)
    base.attr_reader :state
    base.extend ClassMethods
  end

  class Builder
    attr_reader :entity

    def initialize(entity)
      @entity = entity
    end

    def state(name)
      # create predicate
      entity.module_eval do
        define_method("#{name}?") do
          name == instance_variable_get("@state")
        end
      end
    end

    def event; end
  end

  module ClassMethods
    def fsm(&block)
      obj = Builder.new(self)
      obj.instance_eval(&block)
    end
  end
end
