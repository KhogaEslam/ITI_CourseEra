class AttachmentsController < InheritedResources::Base
  load_and_authorize_resource :only => [:edit, :new]
  
  private

    def attachment_params
      params.require(:attachment).permit(:file, :lecture_id)
    end
end
