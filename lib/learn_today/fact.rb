require 'httparty'
require 'json'

# this class is used to retrieve fact of the day
class Fact
    FUN_FACT_URL = "https://asli-fun-fact-api.herokuapp.com/"
    # initialize or create method to get fact
    def self.get_fact
        # make an http request to the api endpoint
        response = ::HTTParty.get(FUN_FACT_URL)
        # parse the response data and get the fact
        body = JSON.parse(response.body)
        # save the parsed fact and display it to the user
        body['data']['fact']
    end
    # generate a new fact everytime the program is ran
end

# puts Fact.new.get_fact