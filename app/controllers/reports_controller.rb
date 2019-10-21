class ReportsController < ApplicationController
  def index
  end

  def show
    render "reports/categories/#{params[:category_id]}/#{params[:report_id]}"
  end

  def archives
    # put some nav system, grouped by date
    @archive_links = { "July_2019" => ["bielefeld"] }
  end

  def show_archive
    render "reports/archives/#{params[:date_id]}/#{params[:archive_id]}"
  end
end