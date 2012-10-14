class ReportsController < ApplicationController
  before_filter :authenticate_inspector!

  def create
    r = Report.new params[:report]
    r.inspector = current_inspector
    r.answers.each{|a| a.inspector = current_inspector}
    redirect_to r.list, notice: "Report filed" if r.save
  end
end

