class StatController < ApplicationController
  before_action do
    @q = Visitor.ransack(params[:q])
  end
  def medium
    @channels = @q.result.group(:medium).joins(:activity)
                  .select("medium, count(user_id) as visitors_count, sum(arpu) as arpu_sum")
                  .order("visitors_count desc, medium asc")
  end

  def activity
    @activities = @q.result.joins(:activity).group("activities.id")
                    .select("title, sum(arpu) as arpu_sum, count(user_id) as visitors_count")
                    .order("visitors_count desc, title asc")
  end

  def activity_medium
    @items = @q.result.joins(:activity).group("activities.id, visitors.medium")
               .select("title, medium, sum(arpu) as arpu_sum, count(user_id) as visitors_count")
               .order("visitors_count desc, title asc, medium asc")
  end
end
