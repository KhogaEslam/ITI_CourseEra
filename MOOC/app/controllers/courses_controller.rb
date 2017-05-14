class CoursesController < InheritedResources::Base
  load_and_authorize_resource :only => [:edit, :new]

  private
    def course_params
      params.require(:course).permit(:title, :user_id)
    end
end
