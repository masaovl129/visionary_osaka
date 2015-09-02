# _*_ coding: utf-8 _*_
require 'csv'

tempo = "0901.csv"

i = 0
for i in 0..tempo.length do
	tempo[i].delete_at(2)
	tempo[i].delete_at(4)
	tempo[i].delete_at(6)
end

file_name = "#{Time.now}.txt"

File.open(file_name, 'w') {|file|
 file.write tempo
}