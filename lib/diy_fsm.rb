# frozen_string_literal: true

require_relative "diy_fsm/version"
require "pry"

module DiyFsm
  def self.included(base)
    base.attr_accessor :state
    base.extend ClassMethods
    base.include InstanceMethods
  end

  class Builder
    attr_reader :entity

    def initialize(entity)
      @entity = entity
    end

    def state(name, initial: false)
      # create predicate
      entity.module_eval do
        define_method("#{name}?") do
          name == instance_variable_get("@state")
        end
      end

      entity.instance_variable_set(:@initial_state, name) if initial
    end

    def event; end
  end

  module ClassMethods
    def fsm(&block)
      obj = Builder.new(self)
      obj.instance_eval(&block)
    end
  end

  module InstanceMethods
    def initialize
      instance_variable_set :@state, self.class.instance_variable_get("@initial_state")
      super
    end
  end
end
