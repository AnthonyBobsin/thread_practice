require 'open-uri'
beginning = Time.now

def seqRead(urls)
	urls.each do |url|
		open(url) do |x|
			x.read
		end
		puts "read: #{url}"
	end
end

urls = []

urls << "http://google.com"
urls << "http://dreamincode.net"
urls << "http://lifehacker.com"
urls << "http://xkcd.com"
urls << "http://engadget.com"

seqRead(urls)

ending = Time.now

puts "This took #{ending - beginning} milliseconds"