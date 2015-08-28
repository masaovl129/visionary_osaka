# _*_ coding: utf-8 _*_
require 'gmail'

gmail = Gmail.connect('masahiroyoshida1209@gmail.com', '8EejBC7Yj6bQwVkG')

#メンバーの名前とメールアドレス(いじる必要なし)

#OJTリーダー

#配置メンバーとメールと日付と店舗
deploy_member = [
["DS泉の広場店","9","5","高尾　悠","社員","takao_yu@visionary-inc.jp","080-9748-9466","高尾　悠","takao_yu@visionary-inc.jp","木村　真之介","shin.027.kisuke@gmail.com","080-2532-4484","萩原　邦人","hagihara_kunito@visionary-inc.jp"],
["DS西中島店","9","4","高尾　悠","社員","takao_yu@visionary-inc.jp","080-9748-9466","高尾　悠","takao_yu@visionary-inc.jp","木村　真之介","shin.027.kisuke@gmail.com","080-2532-4484","萩原　邦人","hagihara_kunito@visionary-inc.jp"]
]

shop = [
["DS姫路砥堀店","9:40","10:00~18:00","https://docs.google.com/spreadsheets/d/1iypmRo88eMOOey-gK6x72HBX0NVj1xVu7tJ6WHm-VZQ/edit#gid=1918856296","http://maps.google.co.jp/?q=ドコモショップ姫路砥堀店"],
["DS道頓堀店","10:40","11:00~19:00","https://docs.google.com/spreadsheets/d/1wciHeAJ4oBRFe9-ff-_y3fl3b_V5ZsDyrz1Qfl45K0A/edit#gid=1918856296","http://maps.google.co.jp/?q=ドコモショップ道頓堀店"],
["DS西梅田店","10:40","11:00~19:00","https://docs.google.com/spreadsheets/d/1gkwH1gaLgtgNLN4e2lyJTh3UZNnxUXSKDJlJeV-A5Ik/edit#gid=1918856296","http://maps.google.co.jp/?q=ドコモショップ西梅田店"],
["DS松屋町店","9:40","10:00~19:00","https://docs.google.com/spreadsheets/d/1hbFkTsfr8qFWOtl8PpkwejR1F9zrjXyeTf2V1CTE19M/edit#gid=1918856296","http://maps.google.co.jp/?q=ドコモショップ松屋町店"],
["DS長瀬駅前店","9:40","10:00~19:00","https://docs.google.com/spreadsheets/d/10ZNo__FyT8T3BUHyltcH0JDSbL3EgDRj94PdHqTl0Dw/edit#gid=1918856296","http://maps.google.co.jp/?q=ドコモショップ長瀬駅前店"],
["DS八尾桜ヶ丘店","9:40","10:00~19:00","https://docs.google.com/spreadsheets/d/1fIe-NCdT_e9JcwOZ2Lw939P-vKsOiMINIUtrFhhsuN8/edit#gid=1918856296","http://maps.google.co.jp/?q=ドコモショップ八尾桜ヶ丘店"],
["DS生駒店","9:40","10:00-19:00","http://drive.google.com/open?id=1WTlUWDgCEYM48fwvF9HKuY-LO4wrr0RD9VDQxgoJ1w0","http://maps.google.co.jp/?q=ドコモショップ生駒店"],
["DS生駒南店","9:40","10:00-19:00","http://drive.google.com/open?id=1huJYpfyIPL4rgwiHRc-WmmsflQ_b2pCw2Zc9Rb3-68M","http://maps.google.co.jp/?q=ドコモショップ生駒南店"],
["DS天理中央店","9:40","10:00-19:00","http://drive.google.com/open?id=1YaCRgkKe4CvAxL2H8dE5tGXQ2l6OjsoqMF4AAVeTF50","http://maps.google.co.jp/?q=ドコモショップ天理中央店"],
["DS相生店","10:40","11:00-19:00","http://drive.google.com/open?id=16-7tYpwH3Oy7WhOd07IKr7_90JIWA5v3vBIvqA_M2t0","http://maps.google.co.jp/?q=ドコモショップ相生店"],
["DS新大阪店","9:40","10:00-18:00","https://docs.google.com/spreadsheets/d/1ZDImMqRzWkJ2omsD2GQGrKIwPEoZbsq5T0aP3BrqM0o/edit?usp=sharing","http://maps.google.co.jp/?q=ドコモショップ新大阪店"],
["DS香里園店","9:40","10:00-18:00","https://docs.google.com/spreadsheets/d/1MzTJEV3KPj8VCDPuacTH6kZ9bzuBbvWmhkx0yYkLqQ0/edit?usp=sharing","http://maps.google.co.jp/?q=ドコモショップ香里園店"],
["DS四条河原町店","10:40","11:00-19:00","https://drive.google.com/open?id=1wolFiFyzQZew5-c9cgfI5fWBZmqsGSlaJ6bQwEJ26zs&authuser=0","http://maps.google.co.jp/?q=ドコモショップ四条河原町店"],
["DSJR立花駅前店","9:40","10:00-18:00","https://drive.google.com/open?id=1tOSbxSLmEKJ8tv8ploo68nVchAZTa5UvNDMsLjE8xu4&authuser=0","http://maps.google.co.jp/?q=ドコモショップJR立花駅前店"],
["DS玉出店","10:40","11:00-19:00","https://drive.google.com/open?id=1rzsk617Fi5uLieyjyRCp_C0YYNO8r9YZg3bm8I39gmI&authuser=0"],
["DS堺東駅北店","9:40","10:00-18:00","https://drive.google.com/open?id=1yGzgezI8fB84h_3dzNdDAMD8HnFY_5y6jDPwglkGcs8&authuser=0"],
["DS金剛東店","10:40","11:00-19:00","https://drive.google.com/open?id=12jagYJYFDJQoJD9UbaN15lCeaWtMgKGIqoI9O4mjkpQ&authuser=0"],
["DS中百舌鳥店","10:40","11:00-19:00","https://docs.google.com/spreadsheets/d/1o_NiKHW9tqpgzZP_ponbjpJ0VQZNlOFF6g6VojFOqTg/edit?usp=sharing","http://maps.google.co.jp/?q=ドコモショップ中百舌鳥店"],
["DS岸和田店","10:10","10:30-18:30","http://drive.google.com/open?id=1jCycRh_YdFLUWUKyuaPF82D5pC2LLQensVP82eeZSR0","http://maps.google.co.jp/?q=ドコモショップ岸和田店"],
["DS泉ヶ丘店","10:40","11:00-19:00","https://docs.google.com/spreadsheets/d/1jpE6zYeRlFo5XV5WwUaL6Q8OWqEcmqw6nLETdWlt0ec/edit?usp=sharing","http://maps.google.co.jp/?q=ドコモショップ泉ヶ丘店"],
["DS深井店","9:40","10:00-18:00","https://docs.google.com/spreadsheets/d/1IeDIc4qHb6KLVKbqruXr8bQ_Rk_xhEzA3zQsVeMifK0/edit?usp=sharing","http://maps.google.co.jp/?q=ドコモショップ深井店"],
["DS光明池店","10:40","11:00-19:00","https://drive.google.com/open?id=1teRYSaHerJxzzVd9uK8TR1pW5mdCZ9lVCQr6wAIgAeQ","http://maps.google.co.jp/?q=ドコモショップ光明池店"],
["DSアリオ鳳店","10:40","11:00-19:00","http://drive.google.com/open?id=1MsqZ9br5y67w-4d8oOrRElvo_2H7OeEf9DdCzEalyLw","http://maps.google.co.jp/?q=ドコモショップアリオ鳳店"],
["DSイオンモール大阪ドームシティ店","10:40","11:00-19:00","https://docs.google.com/spreadsheets/d/1YdO4RM83QMJQifHy9B-fDFehF1QaN3Q6LtOCuHoHME4/edit?usp=sharing","http://maps.google.co.jp/?q=ドコモショップイオンモール大阪ドームシティ店"],
["DS千島ガーデンモール店","9:40","10:00-18:00","https://docs.google.com/spreadsheets/d/1ixI6OsvZtaV4gv0LRAIEflVz59OyowNvRZq1rjHT5Sw/edit?usp=sharing","http://maps.google.co.jp/?q=ドコモショップ千島ガーデンモール店"],
["DS天下茶屋店","10:40","11:00-19:00","https://drive.google.com/open?id=1Wh3AW4EWVLMSZNVLS86FADVxPbph5KylpLl9e_24Y2w&authuser=0","http://maps.google.co.jp/?q=ドコモショップ天下茶屋店"],
["DS丹波篠山店","9:40","10:00-18:00","https://docs.google.com/spreadsheets/d/1Gid_OqtEiqSrdODiPzf9KxrCl6HTFBAp5AmR6aflzjo/edit?usp=sharing"],
["DS丹波柏原店","9:40","10:00-18:00","https://docs.google.com/spreadsheets/d/1cIZ4FBO3-T6lpJVwP7NgQlSBmG-mqgK6y0CUx0D7Hqs/edit?usp=sharing","http://maps.google.co.jp/?q=ドコモショップ丹波柏原店"],
["DS四条大宮店","9:40","10:00-19:00","https://drive.google.com/open?id=1WCqmi4cDxPu7HoMVIycIjy2kDh5d1ly7qsl2pznM5u4&authuser=0","http://maps.google.co.jp/?q=ドコモショップ四条大宮店"],
["DS西大路五条店","9:40","10:00-19:00","https://docs.google.com/spreadsheets/d/14n72Uqozik0PH_IS2LNcXPYBTA8HLbcaBVVw2e_7ll0/edit?usp=sharing","http://maps.google.co.jp/?q=ドコモショップ西大路五条店"],
["DS難波えびす橋店","10:40","11:00-20:00","https://docs.google.com/spreadsheets/d/18OM6YL1sSNOyiFEnsE1N-POJ14E6qUXlQHYekwhw0Ys/edit?usp=sharing"],
["DS瀬田店","9:40","10:00-18:00","https://docs.google.com/spreadsheets/d/193wJ0R071Po1jFUfe9v_YNPfoge2cI5ex-VhG6WWzz4/edit?usp=sharing","http://maps.google.co.jp/?q=ドコモショップ瀬田店"],
["DS八日市店","9:40","10:00-18:00","https://drive.google.com/open?id=1UuTqQ7oSCGza9edcTopfOwDdOypR-uhpsunxS-Ra624&authuser=0","http://maps.google.co.jp/?q=ドコモショップ八日市店"],
["DS南彦根店","9:40","10:00-18:00","https://drive.google.com/open?id=1t7pXejBUtzX2tIEkx7i9P19aB0WtF0imuCC4JQiPlyk&authuser=0","http://maps.google.co.jp/?q=ドコモショップ南彦根店"],
["DS長浜店","9:40","10:00-18:00","https://docs.google.com/spreadsheets/d/1nM7Gm1l1t6-8SUsBdBjW0tqBkEjfAVErAazWHbs3oAI/edit?usp=sharing","http://maps.google.co.jp/?q=ドコモショップ長浜店"],
["DS香芝店","10:40","11:00-19:00","https://docs.google.com/spreadsheets/d/1TzCB0pE2UFxiElLZbmw1ktIvMg8T3nmYKOtYUapHiFQ/edit#gid=1918856296"],
["DS香芝店","10:40","11:00-19:00","https://drive.google.com/open?id=1TzCB0pE2UFxiElLZbmw1ktIvMg8T3nmYKOtYUapHiFQ&authuser=0"],
["DS奈良中央店","10:40","11:00-19:00","https://drive.google.com/open?id=1OSQI0L5Zh2G-u7tJM8fYhVuenGodcwXNT-C7LLNNbsk&authuser=0"],
["DS五條店","10:40","11:00-19:00","https://drive.google.com/open?id=12Q04D5DHKURwZ7-1JfRCv8Dw7IUD6A_orKkPPSi8Rg8&authuser=0"],
["DS橿原店","10:40","11:00-19:00","https://drive.google.com/open?id=1QDKNDAKY2bHXYpGxS_fqsoV4-MrqM__TcKfPq0kzIbQ&authuser=0"],
["DS岩出バイパス店","9:40","10:00-18:00","https://docs.google.com/spreadsheets/d/1tXgSslJOIzEGotd5X9fs6FetYuNClpM40B41pfaabVI/edit?usp=sharing"],
["DS尼崎店","9:40","10:00~18:00","https://docs.google.com/spreadsheets/d/182dveRDUX4xlhkO1tQOutvhBQvqtJJXbdUfeJCMWhV0/edit#gid=1918856296","http://maps.google.co.jp/?q=ドコモショップ尼崎店"],
["DS常盤東店","9:40","10:00-19:00","https://drive.google.com/open?id=1S2CbuokOdysPdtaSqhBEYYLnbxR8yHnV_p-Rhex-LXk&authuser=0"],
["DS飾磨店","9:40","10:00-18:00","http://drive.google.com/open?id=1syda4TB-pSttZdKGobN6daC2lQIGyc6x6Rg4wxnWxxw"],
["DS姫路市役所前店","9:40","10:00-18:00","http://drive.google.com/open?id=1i0mX2Fq5_PXTWdULfZNPfijK2dHROBQboXDSwSpXr0s"],
["DS姫路花田店","10:40","11:00-19:00","http://drive.google.com/open?id=1GvXKhcRml3qln533sHeicp-GbspeudHcUHi14Q27NHA"],
["DS河原町丸太町店","10:10","10:30-18:30","https://docs.google.com/spreadsheets/d/1xKgPxNODQdCvwFF0kwrJgAuLA7fieGF4NID9slfiUe8/edit#gid=1918856296","http://maps.google.co.jp/?q=ドコモショップ河原町丸太町店"],
["DS深江橋店","10:40","11:00~19:00","https://docs.google.com/spreadsheets/d/1M2hBBDD9gCea2MQTcWYqiRJDBk0ofL3Rl7yd8jzJXo8/edit#gid=1918856296","http://maps.google.co.jp/?q=ドコモショップ深江橋店"],
["DS木津山田川店","10:10","10:30-18:30","https://docs.google.com/spreadsheets/d/1q4MqFObH4jbHhOTVHATY0qWJFwvqy1JSw94tWYM4op4/edit#gid=1918856296","http://maps.google.co.jp/?q=ドコモショップ木津山田川店"],
["DS宇治槇島店","10:10","10:30-18:30","https://docs.google.com/spreadsheets/d/1-btAyM2hIqaYsGadegaZ7xTF0dBOZQLShjyiEoJU--0/edit","http://maps.google.co.jp/?q=ドコモショップ宇治槇島店"],
["DS大和高田店","10:40","11:00-19:00","https://docs.google.com/spreadsheets/d/1u7ac4_1WNSl6gREd-FBBO3qTLmva7yKnOxyhn3xBBG4/edit#gid=1918856296","http://maps.google.co.jp/?q=ドコモショップ大和高田店"],
["DS西大寺店","10:40","11:00-19:00","https://docs.google.com/spreadsheets/d/1bgdy1tcxvQocDa8sabD_dQ_KyxkwrbJujz7-CZvZY3k/edit","http://maps.google.co.jp/?q=ドコモショップ西大寺店"],
["DS八戸ノ里駅前店","10:40","11:00~19:00","https://docs.google.com/spreadsheets/d/1_Se7JEPu3mzeS2pZ5KjA32UkoZo_lIu4oP93K51l2Mg/edit#gid=1918856296","http://maps.google.co.jp/?q=ドコモショップ八戸ノ里駅前店"],
["DS桜井店","9:30","10:00-19:00","https://drive.google.com/open?id=1v6vGkNFXUUxJuttLZJ-cqpHfYUAN1FFbR6EnLZzyTa0"],
["DS西中島店","10:40","11:00-19:00","https://docs.google.com/spreadsheets/d/1ItIVhdKiqNmboeKOju3yOA_lwaInyMQcAkYoFFE1MwY/edit#gid=940559031"],
["DS泉の広場店","11:10","11:30-19:30","https://docs.google.com/spreadsheets/d/1Jw_Ze9BiASxStTQ3UjxtcIhDOfzxpDFBmkyx7N_mjSc/edit#gid=1918856296"]
]

taiten = ["https://business.form-mailer.jp/fms/f443783738914",
    "https://business.form-mailer.jp/fms/67786d4545848"]

i=0
for i in 0..deploy_member.length-1 do
    shop1 = shop.assoc(deploy_member[i][0])
if deploy_member[i][4] == "バ"
    then taiten1 = taiten[1]
elsif deploy_member[i][4] != "バ"
    then taiten1 = taiten[0]
end

    gmail.deliver do
        to "#{deploy_member[i][5]}"
        cc "promotion_management@visionary-inc.jp, #{deploy_member[i][8]},#{deploy_member[i[13]]}"
        subject "【店舗詳細】【OJT】#{deploy_member[i][0].gsub('DS','ドコモショップ')} #{deploy_member[i][1]}月#{deploy_member[i][2]}日"
        text_part do
            body "
おつかれさまです
Visionary管理部です

#{deploy_member[i][3]}さんへ

掲題の件ですが、以下に詳細を記載しますので
ご確認ください。

今回は#{deploy_member[i][9]}さんとの二人稼働です
事前に連絡を取り合って勤務行いましょう
+------+-------------------------+
| TEL  | #{deploy_member[i][11]} |
+------+-------------------------+
| MAIL | #{deploy_member[i][10]} |
+------+-------------------------+


詳細はこちら →  #{shop1[3]}
店舗詳細一覧はこちらから　→　https://docs.google.com/spreadsheets/d/1KP_ZUicBn0Oz9Scz3Tshr9erbgembPaTRGzIdV0Vp8I/edit#gid=0

※本メールは配信専用です！
もし何か質問や疑問があれば、
promotion_management@visionary-inc.jp
までメール送信よろしくお願いいたします

本メールを受け取ったら事前報告の送信をお願いします。徹底しましょう！
=========================================
【詳細】

■実施店舗名

#{deploy_member[i][0].gsub('DS','ドコモショップ')}

■店舗地図

http://maps.google.co.jp/?q=#{shop1[0].gsub('DS','ドコモショップ')}

■実施日程

#{deploy_member[i][1]}月#{deploy_member[i][2]}日

■入店時間

#{shop1[1]}

■稼働時間

#{shop1[2]}

※注意事項※
①入店時、必ず「Visionary」と名乗ること
例
「おはようございます！Visionaryの●●です！」

②報告フォームは以下のURLを使用
事前報告
https://business.form-mailer.jp/fms/547c947b36935
準備完了
https://business.form-mailer.jp/fms/f365a2de36937
入店報告
https://business.form-mailer.jp/fms/6920e4e439580
退店報告
#{taiten1}
※注意事項※
退店報告は今回からメンバーごとに違うURLを上に載せてあります。
必ず上のリンクからフォーム入力お願いします。
=========================================

以上です。
ご確認を宜しくお願いします。


＋－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－＋
株式会社Visionary
 
 [大阪支社]   〒530-0055 大阪府大阪市北区野崎町9－13 梅田扇町通ビル9F
                   Tel :06-6367-1781    Fax :03-6369-3433
[本社]         〒163-1030 東京都新宿区西新宿3-7-1 新宿パークタワーN30階
                   Tel :03-5326-3149    Fax :03-6369-3433
[HP]           http://visionary-inc.jp/
＋－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－＋
"
puts "#{i}配列の#{deploy_member[i][0]}#{deploy_member[i][2]}日の#{deploy_member[i][3]}への周知が完了しました"
            end 
        end
    end
puts "今週の配置の総数は計#{deploy_member.length}です"
gmail.logout