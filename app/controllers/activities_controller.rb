class ActivitiesController < ApplicationController
  before_action :set_activity, only: :show

  def index
    @activities = Activity.joins(:visitors)
                    .select("title, count(*) as visitors_count")
                    .group("activities.id")
                    .order("visitors_count")
                    .page(params[:page]).per(10)
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end
end
