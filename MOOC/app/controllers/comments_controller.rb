class CommentsController < InheritedResources::Base

  private

    def comment_params
      params.require(:comment).permit(:text, :lecture_id, :user_id)
    end
end

