module Ruboty
  module Handlers
    class Tabetai < Base
      on(
        /(?<keyword>.+) 食べたい\z/i,
        name: "tabetai",
        description: "食べたいとつぶやいた食べ物の画像が投げつけられる"
      )

      def tabetai(message)
        if url = search(message[:keyword])
          message.reply("@#{message.from_name} ⊂( ･∀･) 彡 #{url}")
        end
      end

      def search(query)
        Ruboty::GoogleImage::Client.new(query: query).get
      end
    end
  end
end
