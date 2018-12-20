require 'sqlite3'

#conect to dataBase
db = SQLite3::Database.new 'test.sqlite'

# insert new row
#db.execute "INSERT INTO Cars (Name, Price) VALUES ('Jaguar', 7000000)"

# show info from dataBase
db.execute "SELECT * FROM Cars" do |car|
	puts car
	puts "======"
end

db.close