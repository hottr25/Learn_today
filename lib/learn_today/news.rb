require 'httparty'
require 'json'

# this will generate the news of the day
class News
    DAILY_NEWS_STORY = 'https://inshorts.deta.dev/news?category=all'
# initialize or create method to get news
    def content
        story['content']
    end

    def url
        story['url'] 
    end

    def story
        return @story unless @story.nil?

        response = ::HTTParty.get(DAILY_NEWS_STORY)
        body = JSON.parse(response.body)
        @story ||= body['data'].sample
    end
end

