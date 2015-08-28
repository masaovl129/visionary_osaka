# _*_ coding: utf-8 _*_

require 'rubygems'
require 'gcalapi'

def eventCreate(_cal, eventName, eventDesc, eventLoca, year, month, day)
event = _cal.create_event
event.title = eventName
event.desc = eventDesc
event.where = eventLoca
event.st = Time.mktime(year, month, day)
event.en = event.st
event.allday = true
event.save!
end

def eventDelete(_cal, eventNumber)
event = _cal.events[eventNumber]
event.destroy!
end

mail = "masahiroyoshida1209@gmail.com"
pass = "8EejBC7Yj6bQwVkG"
feed = "http://www.google.com/calendar/feeds/masahiroyoshida1209@gmail.com/private/full"

cal = GoogleCalendar::Calendar.new(GoogleCalendar::Service.new(mail, pass), feed)
eventCreate(cal,"test","test","test",2015,8,17)