class CommentsController < InheritedResources::Base
  load_and_authorize_resource :only => [:edit, :new]

  def create
    lecture = Lecture.find_by(id: params[:id])
    comment = lecture.comments.build(comment_params)
    comment.user = current_user

    if comment.save
      flash[:notice] = "Comment has been created."
      redirect_to lecture
    else
      flash[:alert] = "Comment has not been created."
    end
  end

  private

  def comment_params
    params.permit(:comment,:lecture_id)
  end
end
