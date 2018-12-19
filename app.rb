require 'sqlite3'

db = SQLite3::Database.new 'test.sqlite'

db.execute "select * from Cars"

db.close