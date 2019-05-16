class ApplicationController < ActionController::Base
  before_action :setup_nav_items

  # This setup is very un-rails-y, not quote sure where the logic should go..
  # The basic premise is that app/views/reports/categories/**/* is where any
  # files or folders added will automatically populate the navbar.
  def setup_nav_items
    dir = Rails.root.join('app', 'views', 'reports', 'categories').to_s
    @nav_items = {}
    cats = Dir.glob("#{dir}/*")
    cats.each do |cat|
      @nav_items[cat.split("/").last] = Dir.glob("#{cat}/*").map do |path|
        path.remove(".slim").split("/").last
      end
    end
    @current_page = request.env['PATH_INFO']
  end
end