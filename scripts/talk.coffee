# Description:
#   呼んだら答える賢い子
#
# Author:
#   FromAtom


sleep = (ms) ->
  start = new Date().getTime()
  continue while new Date().getTime() - start < ms

module.exports = (robot) ->
  robot.hear /(hit|ひっと|ヒット)ちゃん/i, (msg) ->
    sleep 1000
    if /(賢|かしこ|頭い|頭良|あたまい)い/.test(msg.message.text)
        msg.send ":blush:えっへん！"

    if /(可愛|かわい|カワイ)(い|イ)/.test(msg.message.text)
        msg.send ":laughing:えへへ...///"

  robot.hear /こんにち(は|わ)/, (msg) ->
    sleep 1000
    msg.send "こんにちは！"

  robot.hear /こんばん(は|わ)/, (msg) ->
    sleep 1000
    msg.send "こんばんは！"

  robot.hear /おはやっほ/, (msg) ->
    sleep 1000
    msg.send "おはやっほー！"

  robot.hear /おはよう/, (msg) ->
    sleep 1000
    msg.send "おはようございます！"

  robot.hear /わいわい/, (msg) ->
    sleep 1000
    msg.send "わいわい"

  robot.hear /アルギニン/, (msg) ->
    sleep 1000
    msg.send "1日5g以上摂取してはいけませんよ。クエン酸も一緒にね。"

  robot.hear /もっちもち/, (msg) ->
    sleep 1000
    msg.send "またニーソのかわいい女の子を見つけたんですね。"

  robot.hear /Emacs/, (msg) ->
    msg.send "Emacs最高！"

  robot.hear /めでたい/, (msg) ->
    sleep 1000
    msg.send ":sparkles::bamboo::congratulations::bamboo::sparkles:"

  robot.hear /寿司/, (msg) ->
    sleep 1000
    msg.send ":sushi:"

  robot.hear /ビール/, (msg) ->
    @beers = [":beers:", ":beer:"]
    sleep 1000
    msg.send @beers[Math.floor(Math.random() * @beers.length)]

  robot.hear /疲れ/, (msg) ->
    sleep 1000
    @drinks = [":tea:", ":coffee:", ":tropical_drink:", ":sake:", ":wine_glass:", ":cocktail:"]
    msg.send @drinks[Math.floor(Math.random() * @drinks.length)]

  robot.hear /電池/, (msg) ->
    sleep 1000
    msg.send ":battery:"

  robot.hear /(麻雀|マージャン|まーじゃん)/, (msg) ->
    sleep 1000
    msg.send ":mahjong::mahjong::mahjong:"

  robot.hear /(くそねみ|クソネミ|ｸｿﾈﾐ)/, (msg) ->
    sleep 1000
    msg.send "( ˘ω˘)ｽﾔｧ"

  robot.hear /(眠|ねむ)い/, (msg) ->
    sleep 1000
    msg.send "寝ろ！"

  robot.hear /(ぬるぽ|ヌルポ|ﾇﾙﾎﾟ)/, (msg) ->
    sleep 1000
    msg.send "ガッ"

  robot.hear /(腹|はら|ハラ)(?:|が|ガ)(減|へ|ヘ)(?:|った|ッタ)/, (msg) ->
    sleep 1000
    @foods = [
      ":sushi:", ":pizza:", ":hamburger:", ":fries:", ":poultry_leg:",
      ":meat_on_bone:", ":spaghetti:", ":curry:", ":fried_shrimp:",
      ":bento:", ":sushi:", ":rice_ball:", ":ramen:", ":oden:", ":egg:"
    ]
    message = @foods[Math.floor(Math.random() * @foods.length)]
    msg.send message

  robot.hear /(す(い|み)ません|ス(ミ|イ)マセン|ごめん|(許|ゆる)さん)/, (msg) ->
    sleep 1000
    msg.send ":rage:許さん:rage:"

  robot.hear /(許|ゆる)して/, (msg) ->
    sleep 1000
    msg.send ":innocent:許す:innocent:"

  robot.hear /あけおめ/, (msg) ->
    sleep 1000
    msg.send ":bamboo:あけおめ:bamboo:"

  robot.hear /(あ|明)けましておめでとう/, (msg) ->
    sleep 1000
    msg.send ":bamboo:あけましておめでとう！:bamboo:"
