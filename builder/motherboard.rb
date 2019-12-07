require_relative 'basic_cpu.rb'

# mother board base class
class Motherboard
  attr_accessor :cpu
  attr_accessor :memory_size

  def initialize(cpu=BasicCpu.new, memory_size=1000)
    @cpu = cpu
    @memory_size = memory_size
  end
end