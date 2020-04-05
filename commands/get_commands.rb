require 'rss'
require 'open-uri'

module Automd
    module Commands
        class GetCommands < SlackRubyBot::Commands::Base
            command 'get_commands' do |client,data, _match|
                url= "google.com"
                rss = RSS::Parser.parse(open(url).read,false).items.first
                client.say(channel: data.channel, text: rss.link)
            end
            command 'say_hello' do |client,data, _match|
                client.say(channel: data.channel, text: HelloText.say_hello)
        
            end
        end
    end
end

class HelloText
    def self.say_hello
        'Hello! This is a Bot!'
    end
end

