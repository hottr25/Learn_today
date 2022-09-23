require 'httparty'
require 'json'

# this class is used to retrieve joke of the day
class Joke

    JOKE_OF_DAY_URL = "https://v2.jokeapi.dev/joke/Pun?type=single"
    # initialize or create method to get joe
    def self.get_joke
        # make an http request to the api endpoint
        response = ::HTTParty.get(JOKE_OF_DAY_URL)
        # parse the response data and get the joke
        body = JSON.parse(response.body)
        # save the parsed joke and display it to the user
        body['data']['joke']
        # generate a new joke everytime the program is ran
    end
end