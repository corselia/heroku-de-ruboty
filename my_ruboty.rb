require './original_handlers/sushi'
require './original_handlers/tabetai'
require './original_handlers/stars_gacha'

# 既存の gem を改造するのってこうやってオーバーライドするしかないのかなぁ
module Ruboty
  module Handlers
    class GoogleImage < Base
      on /画像( me)? (?<keyword>.+)/, name: "image", description: "Search image from Google"
    
      def image(message)
        if url = search(message[:keyword])
          message.reply("@#{message.from_name} #{url}")
        end
      end
    end
  end
end
