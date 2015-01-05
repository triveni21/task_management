require 'active_support/concern'

module Wizbang
  module ActsAsWizbang
    extend ActiveSupport::Concern

  	def foo
    # do something
    p "yepeeee"
 	end
 end
end