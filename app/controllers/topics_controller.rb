class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    respond_with(@topics)
  end

  def show
    @topic = Topic.find(params[:id])
    respond_with(@topic)
  end

  def new
    @topic = Topic.new
    respond_with(@topic)
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def create
    @topic = Topic.new(params[:topic])
    @topic.save
    respond_with(@topic)
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update_attributes(params[:topic])
    respond_with(@topic)
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    respond_with(@topic)
  end
end
