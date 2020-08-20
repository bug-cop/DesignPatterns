require_relative 'cpu.rb'

class TurboCpu < Cpu
  attr_accessor :processor

  def initialize(processor='i5')
    super(8,2000)
    @processor = processor
  end
end