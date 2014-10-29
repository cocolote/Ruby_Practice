#to use the sunlight-congress library
require "sunlight/congress"
#to set the API key to be able to use the library
Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

path = "c:\\users\\ezequiel\\rmprojects\\appacademy\\event_manager\\"

require 'csv'
puts
puts 'Event Manager Initialized!'
puts '--------------------------'
puts
#--------------------------------------------------------------------------------
#contents = File.read "c:\\users\\ezequiel\\rmprojects\\appacademy\\event_manager\\event_attendees.csv"
#puts contents
#--------------------------------------------------------------------------------
#Manual way to manipulate archives that are separated by commas
#lines = File.readlines "c:\\users\\ezequiel\\rmprojects\\appacademy\\event_manager\\event_attendees.csv"
#lines.each_with_index do |line, i|
#  next if i == 0
#  columns = line.split(',')
#  name = columns[2]
#  puts name
#end
#--------------------------------------------------------------------------------
#CSV class to manipulate archives that are separated by commas
#headers: true, doesn't show the header line
#header_converters: :symbol, converts the header elements in symbols so the you can access to the values like in a hash
=begin
contents = CSV.open("c:\\users\\ezequiel\\rmprojects\\appacademy\\event_manager\\event_attendees.csv",
                     headers: true, header_converters: :symbol)
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  puts "#{name}: ".ljust(15) + "#{zipcode}".rjust(5,'0')
end
=end
#--------------------------------------------------------------------------------
#doing the same as above but creating a method to clean the zipcode
contents = CSV.open("#{path}event_attendees.csv", headers: true, header_converters: :symbol)
template_letter = File.read("#{path}form_letter.html")
=begin
def clean_zipcode(zipcode)
  if zipcode.nil?
    "00000"
  elsif zipcode.length < 5
    zipcode.rjust(5,'0')
  elsif zipcode.length > 5
    zipcode[0..4]
  else
    zipcode
  end
end
=end
def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5,'0')[0..4]
end

def legislators_by_zipcode(zipcode)
  #retrive the legislators array
  legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)
  #to get only the first name and last name of the legislator
  legislators_names = legislators.each.map{|legislator| "#{legislator.first_name} #{legislator.last_name}"}.join(', ')
end

contents.each do |row|
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])

  legislators = legislators_by_zipcode(zipcode)

  personal_letter = template_letter.gsub('FIRST_NAME', name)
  personal_letter.gsub!('LEGISLATORS', legislators)

  puts personal_letter

  #puts "#{name}: ".ljust(15) + "#{zipcode} #{legislators}"
end
#--------------------------------------------------------------------------------
