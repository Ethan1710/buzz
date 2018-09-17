class CalendarsController < ApplicationController
  def index
    require 'json'
    require 'open-uri'

    url = 'https://assessments.bzzhr.net/calendar/?format=json'
    @calendars = open(url).read
    @calendar = JSON.parse(@calendars)

    @calendar['results'].each do |r|
     @cal = r
   end
  end

  # def show
  #   now = Time.now.iso8601
  #   items = calendar.fetch_all do |token|
  #   calendar.list_events('primary',
  #     single_events: true,
  #     order_by: 'startTime',
  #     time_min: now,
  #     page_token: token)
  #   end
  #   items.each { |event| puts event.summary }
  # end
end






# Client ID
# 852330685931-5uvjv50u2ts5jcvsebjr4477b8tmmko9.apps.googleusercontent.com

# Client Secret
# JTs4XCsGVL35ksJg6SZigtdN



