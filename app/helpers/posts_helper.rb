module PostsHelper
  def format_date(date)
    date.strftime("%d.%m.%Y %H:%M")
  end

  def today_word_date
    agent = Mechanize.new

    main_page = agent.get 'http://www.opoka.org.pl/dzis/0.1,index.html'

    main_page.at_css('.topTable td h3').text.strip

  end

  def today_word_text
    agent = Mechanize.new

    main_page = agent.get 'http://www.opoka.org.pl/dzis/0.1,index.html'

    text = main_page.at_css('.liturgia1').text.strip
  end
end
