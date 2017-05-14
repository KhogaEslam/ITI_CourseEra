class LikesController < InheritedResources::Base
  load_and_authorize_resource :only => [:edit, :new]
  
  private

    def like_params
      params.require(:like).permit(:lecture_id, :user_id)
    end
end
