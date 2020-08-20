require_relative 'computer.rb'
require_relative 'motherboard.rb'
require_relative 'drive.rb'
require_relative 'computer_builder.rb'

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

