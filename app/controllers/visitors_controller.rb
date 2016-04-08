class VisitorsController < ApplicationController

  def index
    @topic = Topic.where(name: params[:topic]).try(:first)
    @questions = Question.by_topic(@topic).randomized.shuffle
  end
end
