require 'open-uri'
beginning = Time.now

def conRead(urls)
	thread_list = []
	urls.each do | url |
		thread_list << Thread.new {
			open(url) do | x |
				x.read
	 		end
			puts "read: #{url}"
		}
	end
	thread_list.each { | x | x.join }

end

urls = []

urls << "http://google.com"
urls << "http://dreamincode.net"
urls << "http://lifehacker.com"
urls << "http://xkcd.com"
urls << "http://engadget.com"

conRead(urls)

ending = Time.now

puts "This took #{ending - beginning} milliseconds"
