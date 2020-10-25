
# Notes
# structural design patterns
# Adapter is a structural design pattern that allows objects with incompatible interfaces to collaborate.
# writing wrappers over legacy codes
# already have system, re-use


# capitalize contents of a file
class Capitalizer
  def capitalize(reader, writer)
    while not reader.eof?
      read = reader.getc
      capital = read.upcase
      print capital
      writer.putc capital
    end
  end
end

# string adapter to work on fileIO
class StringAdapter
  def initialize(string)
    @input = string
    @index = 0
  end

  def eof?
    @index >= @input.length
  end

  def getc
    raise EOFError if @index >= @input.length

    ch = @input[@index]
    @index += 1
    return ch
  end
end


reader = File.open('input_file.txt','r')
writer = File.open('capitalized.txt','w')

# use StringAdapter to take input from string instead of file
reader = StringAdapter.new('some string')

capitalizer = Capitalizer.new
capitalizer.capitalize(reader, writer)

