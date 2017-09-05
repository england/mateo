class StatController < ApplicationController
  def medium
    @channels = Visitor.group(:medium).joins(:activity)
                  .select("medium, count(*) as visitors_count, sum(arpu) as arpu_sum")
                  .order("visitors_count desc, medium asc")
  end

  def activity
    @activities = Visitor.joins(:activity).group("activities.id")
                    .select("title, sum(arpu) as arpu_sum, count(*) as visitors_count")
                    .order("visitors_count desc, title asc")
  end

  def activity_medium
    @items = Visitor.joins(:activity).group("activities.id, visitors.medium")
               .select("title, medium, sum(arpu) as arpu_sum, count(*) as visitors_count")
               .order("visitors_count desc, title asc, medium asc")
  end
end
