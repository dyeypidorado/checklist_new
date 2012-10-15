class ReportsController < ApplicationController
  before_filter :authenticate_inspector!
  before_filter :get_list_reports, only: [:index]

  def index
#    respond_with @reports
  end

  def create
    r = Report.new params[:report]
    r.inspector = current_inspector
    r.answers.each{|a| a.inspector = current_inspector}
#    redirect_to r.list, notice: "Report filed" if r.save
    redirect_to [r.list, :reports], notice: "Report filed" if r.save
  end

  protected
    def get_list_reports
      @list = List.find params[:list_id]
      @reports = @list.reports
    end
end
