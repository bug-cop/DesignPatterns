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