#require_relative './youtube.rb'

require 'watir'
require 'watir-webdriver'

browser = Watir::Browser.new
sleep(60)
browser.goto 'http://www.vidtomp3.com/'

youtube = [	
			'https://www.youtube.com/watch?v=A76a_LNIYwE',
			 'https://www.youtube.com/watch?v=BgfcToAjfdc',
			 'https://www.youtube.com/watch?v=mCHUw7ACS8o',
			 'https://www.youtube.com/watch?v=pey29CLID3I',
			 'https://www.youtube.com/watch?v=8kNtnmaCOcs',
			 'https://www.youtube.com/watch?v=SMJaUB6p3j8',
			 'https://www.youtube.com/watch?v=T7YJoGXs2i8',
			 'https://www.youtube.com/watch?v=yTzyJ7kDLL4',
			 'https://www.youtube.com/watch?v=m4ejJSUB_Vc',
			 'https://www.youtube.com/watch?v=x73XK5oIcfI',
			 'https://www.youtube.com/watch?v=RPi9hDhSNKo',
			 'https://www.youtube.com/watch?v=-JJAXwAaA2w',
			 'https://www.youtube.com/watch?v=e7bxXjQL3cY',
			 '',
			 '',
			 '',
			 '',
			 '',
			 '',
			 '',
			 #'',
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
