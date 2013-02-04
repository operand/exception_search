require 'open-uri'

# Extends the base exception class with methods to display links to search results
class Exception
  def to_google
    "https://www.google.com/search?q=#{URI::encode(message)}"
  end

  def to_stackoverflow
    "http://stackoverflow.com/search?q=#{URI::encode(message)}"
  end
end
