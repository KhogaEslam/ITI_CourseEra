class CoursesController < InheritedResources::Base
  load_and_authorize_resource :only => [:edit, :new]

  def index
    @courses = Course.order("title").page(params[:page]).per(1)
  end
  private
    def course_params
      params.require(:course).permit(:title, :user_id)
    end
end
