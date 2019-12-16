class ReportsController < ApplicationController
  def index
  end

  def show
    render "reports/categories/#{params[:category_id]}/#{params[:report_id]}"
  end

  def archive_index
    @date = request.env['PATH_INFO'].split('/').last
    dir = Rails.root.join('app', 'views', 'reports', 'categories', 'archives', @date).to_s
    @archive_items = Dir.glob("#{dir}/*").map do |path|
      next unless path['.slim']
      path.remove(".slim").split("/").last
    end.compact.sort
    render "reports/categories/archives/#{params[:date_id]}"
  end

  def show_archive
    render "reports/categories/archives/#{params[:date_id]}/#{params[:archive_id]}"
  end
end