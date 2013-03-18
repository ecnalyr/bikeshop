module ApplicationHelper
  require 'date'
  require 'time'
  def todays_hours
    now = Time.now
    html = ""
    if now.wday == 0
      html << "Closed Sundays"
    elsif now.wday == 6
      html << "Open today until 5pm"
    else
      html << "Open today until 7pm"
    end
    html
  end
end
