class StatController < ApplicationController
  def medium
    @channels = Visitor.group(:medium).joins(:activity)
                  .select("medium, count(*) as visitors_count, sum(arpu) as arpu_sum")
  end

  def activity
  end

  def activity_medium
  end
end
