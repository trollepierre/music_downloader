#require_relative './youtube.rb'

require 'watir'
require 'watir-webdriver'

puts 'Watir ouvert'
Selenium::WebDriver::Firefox.path = "/Users/trolle/projects/Firefox-47.app/Contents/MacOS/firefox"
puts 'Firefox spécifié'
browser = Watir::Browser.new :firefox
sleep(6)
puts 'Browser On'
browser.goto 'http://www.vidtomp3.com/'
puts 'Site Vidtomp3 rejoint'

youtube = [	
	#'après le 28 octobre, non téléchargé',
			 '',
			 '',
			 '',			 
			 '',			 
			 '',
			 '',
			 '',
			 '',
			 '',
			 '',
			 '',
			 '',			 
			 '',			 
			 '',
			 '',
			 '',
			 '',
			 ''
		  ]

youtube.each { |youtube_link| 

	browser.text_field(:name => 'url').when_present.set youtube_link

	browser.button(:id => 'downloadbutton').when_present.click

	browser.link(:text, "Click here to get your Download Link").when_present.click

	browser.button(:id => 'downloadmp3').when_present.click

	browser.link(:text, "click here").when_present.click

}

sleep(60)
browser.close
