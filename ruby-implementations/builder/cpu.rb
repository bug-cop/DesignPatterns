class Cpu
  attr_accessor :core
  attr_accessor :clock_rate

  def initialize(core, clock_rate)
    @core = core
    @clock_rate = clock_rate
  end
end