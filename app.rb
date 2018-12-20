require 'sqlite3'

db = SQLite3::Database.new 'test.sqlite'

puts db.execute "select * from Cars"

db.close