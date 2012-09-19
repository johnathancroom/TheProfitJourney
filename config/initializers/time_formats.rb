Time::DATE_FORMATS[:pretty] = lambda { |time| time.strftime "%B #{time.day.ordinalize}, %Y %l:%M%p %Z" }
Time::DATE_FORMATS[:date]  =lambda { |time| time.strftime "%m/%d/%Y" }