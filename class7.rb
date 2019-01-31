class Song
	attr_reader :name, :artist, :duration     
	def initialize (name, artist, duration)
    	@name     = name
		@artist   = artist
		@duration = duration
  	end
end
aSong = Song.new("Bicylops", "Fleck", 260)
puts aSong.name
puts aSong.artist
puts aSong.duration