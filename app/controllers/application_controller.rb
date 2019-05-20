class ApplicationController < ActionController::Base
  before_action :setup_nav_items

  # This setup is very un-rails-y, not quote sure where the logic should go..
  # The basic premise is that app/views/reports/categories/**/* is where any
  # files added will automatically populate the navbar.

  # Note that to sort the categories they have been statically listed below,
  # so adding a new folder will not auto-populate the navbar
  def setup_nav_items
    dir = Rails.root.join('app', 'views', 'reports', 'categories').to_s
    @nav_items = {}
    cats = %W(
      the_churches
      developing_localities
      cities_we_are_burdened_for
      various_works
      building_projects
    )
    cats.each do |cat|
      @nav_items[cat] = Dir.glob("#{dir}/#{cat}/*").map do |path|
        path.remove(".slim").split("/").last
      end.sort
    end
    @current_page = request.env['PATH_INFO']
  end
end