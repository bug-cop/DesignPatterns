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
