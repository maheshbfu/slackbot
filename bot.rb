module Automd
    class Bot < SlackRubyBot::Bot
        help do
            title 'Automd Bot'
            desc 'This is disaster food bot'

            command :get_latest_episode do
                title 'get_latest_episode'
                desc 'Returns the url of the latest Drifting Ruby Episode'
                long_desc 'Returns the url of the latest Drifting Ruby Episode'
            end
        end
    end
end