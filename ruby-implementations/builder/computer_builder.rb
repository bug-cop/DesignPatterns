require_relative 'computer.rb'
require_relative 'turbo_cpu.rb'

# builder for computer
class ComputerBuilder
  attr_accessor :computer

   def initialize
     @computer = Computer.new
   end

  def turbo
    @computer.motherboard.cpu = TurboCpu.new
  end

  def display=(display)
    @computer.display = display
  end

  def memory_size=(size)
    @computer.motherboard.memory_size = size
  end

  def add_cd
    @computer.drives << Drive.new(:cd, 512)
  end

  def add_dvd
    @computer.drives << Drive.new(:dvd, 2048)
  end

  def add_ssd
    @computer.drives << Drive.new(:ssd, 1024)
  end
end