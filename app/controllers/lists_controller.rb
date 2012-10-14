class ListsController < ApplicationController
  before_filter :authenticate_inspector!
  before_filter :get_lists, only: [:index]
  before_filter :get_list, only: [:show, :edit, :update, :destroy, :report]
  respond_to :html, :json

  def index
    respond_with @lists
  end

  def new
    @list = List.new
    respond_with @list
  end

  def create
    @list = List.new params[:list]
    redirect_to lists_path if @list.save
  end

  def edit
    respond_with @list
  end

  def update
    redirect_to @list, notice: "List updated" if @list.save
  end

  def destroy
    redirect_to lists_path if @list.destroy
  end

  def report
    @report = @list.reports.build inspector: current_inspector
    for list_item in @list.list_items
      @report.answers.build list_item_id: list_item.id
    end
  end

  protected
    def get_list
      @list = List.includes(:list_items).find params[:id]
    end

    def get_lists
      @lists = List.all
    end
end
