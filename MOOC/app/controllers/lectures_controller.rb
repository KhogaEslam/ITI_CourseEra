class LecturesController < InheritedResources::Base
  load_and_authorize_resource :only => [:edit, :new]

  def show
    @lecture = Lecture.find_by(id: params[:id])
    @comments = @lecture.comments
  end

  def like
    @lecture = Lecture.find(params[:id])
    @lecture.upvote_by current_user
    redirect_to :back
  end

  def flag
    @lecture = Lecture.find(params[:id])
    @lecture.downvote_by current_user
    redirect_to :back
  end

  private
    def lecture_params
      params.require(:lecture).permit( :description, :video, :course_id,  {attachments: []})
    end
end
