class Album
	attr_reader :name, :songs
	def initialize name
		@name = name
		@songs = []
	end
	def add_song song
		@songs << song		
	end
end

class Song
	#name, duration
	attr_reader :name, :duration
	def initialize name, duration
		@name = name
		@duration = duration
	end
end

album = Album.new 'Modern talking'

song1 = Song.new 'The show must go on1', 16
song2 = Song.new 'The show must go on2', 26
song3 = Song.new 'The show must go on3', 36

album.add_song song1
album.add_song song2
album.add_song song3

album.songs.each do |song|
	puts "Song name: #{song.name}. Duration: #{song.duration}."
end