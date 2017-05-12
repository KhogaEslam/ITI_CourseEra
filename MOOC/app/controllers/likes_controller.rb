class LikesController < InheritedResources::Base

  private

    def like_params
      params.require(:like).permit(:lecture_id, :user_id)
    end
end

