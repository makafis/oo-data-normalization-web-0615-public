require 'pry'
class Song
  # code goes here
  attr_accessor :title, :artist


  def serialize
    title = @title.gsub(" ","_").downcase
    artist = @artist.name
    filename = "#{title}"
    # binding.pry
    x = Tempfile.new([filename, '.txt'], 'tmp/')
    x.write("#{artist} - #{@title}")
    x.rewind
  end
end
