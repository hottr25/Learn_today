class Cli
    class << self
        def start
            greeting
            options
            input
        end

        private 

        def greeting
            puts"Hello, Learned Today bot here :)"
            buffer 
        end

        def options
            puts"1. Joke | 2. News story for today | 3. Fun Fact"
            buffer 
        end

        def buffer
            sleep 2.0
        end

        def input
            user_input = gets.chomp
            case user_input
            when "1"
                puts Joke.get_joke
            when "2"
                news = News.new
                puts news.content
                puts news.url
            when "3"
                puts Fact.get_fact
            else
                puts "Why dont you follow the rules."
                
            end
        end

    end
end
