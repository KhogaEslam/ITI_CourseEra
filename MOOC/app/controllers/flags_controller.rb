class FlagsController < InheritedResources::Base
  load_and_authorize_resource :only => [:edit, :new]
  private

    def flag_params
      params.require(:flag).permit(:lecture_id, :user_id)
    end
end
