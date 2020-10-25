
require_relative 'capitalizer'
require_relative 'string_adapter'

reader = File.open('input_file.txt','r')
writer = File.open('capitalized.txt','w')

# use StringAdapter to take input from string instead of file
reader = StringAdapter.new('some string')

capitalizer = Capitalizer.new
capitalizer.capitalize(reader, writer)

# Notes
# structural design patterns
# Adapter is a structural design pattern that allows objects with incompatible interfaces to collaborate.
# writing wrappers over legacy codes
# already have system, re-use
