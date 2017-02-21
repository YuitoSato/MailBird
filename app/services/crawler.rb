class Crawler
  def execute
    Settings.sites.each do |site|
      feed = Feedjira::Feed.fetch_and_parse(site)
      feed.entries.each do |entry|
      end
    end
  end
end
