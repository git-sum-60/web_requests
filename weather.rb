require 'http'

# user enters a city
# I show the weather of that city
# "It is currently 75 degrees and sunny in Buffalo"

user_input = gets.chomp

response = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=#{user_input}&units=imperial&APPID=")

temperature = response.parse['main']['temp']

weather_description = response.parse['weather'][0]['description']

city = response.parse['name']

p "It is currently #{temperature} and #{weather_description} in #{city}"


# p response.parse