class BasicCpu < Cpu
  attr_accessor :processor
  def initialize(processor='i3')
    super(2,500)
    @processor = processor
  end
end

# computer class
class Computer
  attr_accessor :display
  attr_accessor :motherboard
  attr_reader :drives

  def initialize(display=:led, motherboard=Motherboard.new, drives=[])
    @motherboard = motherboard
    @drives = drives
    @display = display
  end
end

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

class Cpu
  attr_accessor :core
  attr_accessor :clock_rate

  def initialize(core, clock_rate)
    @core = core
    @clock_rate = clock_rate
  end
end

class Drive
  attr_accessor :name
  attr_accessor :size

  def initialize(name, size)
    @name = name
    @size = size
  end
end

# mother board base class
class Motherboard
  attr_accessor :cpu
  attr_accessor :memory_size

  def initialize(cpu=BasicCpu.new, memory_size=1000)
    @cpu = cpu
    @memory_size = memory_size
  end
end

class TurboCpu < Cpu
  attr_accessor :processor

  def initialize(processor='i5')
    super(8,2000)
    @processor = processor
  end
end



motherboard = Motherboard.new

drives = []
drives << Drive.new(:ssd, 1024)
drives << Drive.new(:cd, 1024)
drives << Drive.new(:dvd, 1024)

# computer withoud builder
#computer = Computer.new :oled, motherboard, drives


computer_builder = ComputerBuilder.new
computer_builder.turbo
computer_builder.add_ssd
computer_builder.add_cd
computer_builder.add_dvd

computer = computer_builder.computer

puts "display: #{computer.display}"
puts "core: #{computer.motherboard.cpu.core}"
puts "clock_rate: #{computer.motherboard.cpu.clock_rate}"
puts "memory_size: #{computer.motherboard.memory_size}"
computer.drives.each_with_index do |drive, index|
  puts "#{index + 1}. name: #{drive.name} size: #{drive.size}"
end

