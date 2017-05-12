class LecturesController < InheritedResources::Base

  private

    def lecture_params
      params.require(:lecture).permit(:description, :video, :course_id)
    end
end

