require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Kid
  include Dance #Allows us to use the Dance module's INSTANCE methods (not class methods).
  extend MetaDancing  #Allows us to use the MetaDancing module's CLASS methods, such as Kid.metadata, but not instance methods. This means we require two seperate modules for full functionality. We are better off doing the following instead.
  
  extend FancyDance::ClassMethods     #used in conjunction, this
  include FancyDance::InstanceMethods #allows us to use the FancyDance module's ClassMethods and InstanceMethods sub-modules in order to use both class and instance methods.
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end