class Page < ActiveRecord::Base

    require 'nokogiri'
    require 'HTTParty'

    page = HTTParty.get("https://www.disabledperson.com")

    parse_page = Nokogiri::HTML(page)

    parse_page.css('.content').css('a').each do |a|
      Page.create(:scrape_categories a.text)
    end

end
