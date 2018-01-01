module Ruboty
  module Handlers
    class Sushi < Base
      on(
        /寿司\z/i, # "@budehuc 寿司" に反応する
        name: "sushi", # 呼ばれるメソッド名
        description: "寿司が返ってくるだけのコマンド" # help の表示内容 
      )

      def sushi(message)
        message.reply("@#{message.from_name} ⊂( ･∀･) 彡 🍣🍣🍣🍣🍣🍣")
      end
    end
  end
end
