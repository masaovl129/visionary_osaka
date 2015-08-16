# _*_ coding: utf-8 _*_

mail = "masahiroyoshida1209@gmail.com"
pass = "8EejBC7Yj6bQwVkG"
feed = "https://www.google.com/calendar/feeds/gdm0e2rsri8vgkugck34ime604%40group.calendar.google.com/private/full"
srv = GoogleCalendar::Service.new(mail, pass)
cal = GoogleCalendar::Calendar::new(srv, feed)
event = cal.create_event
event.title = "テスト"
event.desc = "ゆっくりしていってね！"
event.where = "ゆっくりした結果がこれだよ！"
event.st =  Time.mktime(2015, 8, 24, 0, 0, 0)
event.en =  Time.mktime(2015, 8, 25, 12, 0, 0)
event.save!