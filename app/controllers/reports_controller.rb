class ReportsController < ApplicationController
  def index
  end

  def show
    render "reports/categories/#{params[:category_id]}/#{params[:report_id]}"
  end
end