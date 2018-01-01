require 'csv'

module Ruboty
  module Handlers
    class StarsGacha < Base
      on(
        /108星ガチャ\z/i,
        name: "stars_gacha",
        description: "108星ガチャ（ただし幻水II）"
      )

      def stars_gacha(message)
        table = CSV.table('108stars.csv')

        gacha_number = rand(0..131)
        gacha_hit_character_name = table[gacha_number][:character_name]
        gacha_hit_uri = table[gacha_number][:uri]

        message.reply("@#{message.from_name} #{gacha_hit_character_name} を引きました！ #{gacha_hit_uri}")
      end
    end
  end
end
