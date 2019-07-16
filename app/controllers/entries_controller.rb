class EntriesController < ApplicationController
  before_action :set_feed, only: :index

  def index
    @entries = @feed.entries.order('published desc')
  end

  def show
    @entry = Entry.find_by(id: params[:id])
  end

  private
  def set_feed
    @feed = Feed.find_by(id: params[:id])
  end
end