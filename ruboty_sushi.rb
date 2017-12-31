module Ruboty
  module Handlers
    class Sushi < Base
      on(
        /寿司\z/i, # "@budehuc 寿司" に反応する
        name: "sushi", # 呼ばれるメソッド名
        description: "寿司が返ってくるだけのコマンド" # help の表示内容 
      )

      def sushi(message)
        message.reply("@#{message.from_name} 🍣🍣🍣🍣🍣🍣")
      end
    end

    # gem の中に入っているのでこうやってオーバーライドするしかないのかなぁ
    class GoogleImage < Base
      def image(message)
        if url = search(message[:keyword])
          message.reply("@#{message.from_name} #{url}")
        end
      end
    end
  end
end
