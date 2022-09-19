require 'httparty'
require 'json'

class Joke

    JOKE_OF_DAY_URL = "https://v2.jokeapi.dev/joke/Pun?type=single"

    def self.get_joke

        response = ::HTTParty.get(JOKE_OF_DAY_URL)

        body = JSON.parse(response.body)

        body['data']['joke']
    
    end
end