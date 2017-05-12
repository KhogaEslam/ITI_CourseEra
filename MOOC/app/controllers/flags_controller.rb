class FlagsController < InheritedResources::Base

  private

    def flag_params
      params.require(:flag).permit(:lecture_id, :user_id)
    end
end

