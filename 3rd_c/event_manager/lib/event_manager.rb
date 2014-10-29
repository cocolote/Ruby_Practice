#to use the sunlight-congress library
require "sunlight/congress"

#library to use files separated with commas
require 'csv'

#library to create templates and execute ruby code in a diferente language
require 'erb'

#to set the API key to be able to use the library
Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

#put the path of the project in a variable to simplify the calls.
path = "c:\\users\\ezequiel\\rmprojects\\appacademy\\event_manager\\"

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5,'0')[0..4]
end

def legislators_by_zipcode(zipcode)
  #retrive the legislators array
  legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)
end

def save_thank_you_letters(path,id,personal_letter)

  Dir.mkdir(path + "Output") unless Dir.exists? path + "Output"

  filename = path + "Output\\thanks_#{id}.html"

  File.open(filename, 'w') do |file|
    file.puts personal_letter
  end
end

puts
puts 'Event Manager Initialized!'
puts '--------------------------'
puts

contents = CSV.open("#{path}event_attendees.csv", headers: true, header_converters: :symbol)
template_letter = File.read("#{path}form_letter.erb")
erb_template = ERB.new template_letter

contents.each do |row|
  id = row[0]
  name = row[:first_name]

  zipcode = clean_zipcode(row[:zipcode])

  legislators = legislators_by_zipcode(zipcode)

  personal_letter = erb_template.result(binding)

  save_thank_you_letters(path,id,personal_letter)

end
