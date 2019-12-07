require_relative 'cpu.rb'

class BasicCpu < Cpu
  attr_accessor :processor
  def initialize(processor='i3')
    super(2,500)
    @processor = processor
  end
end