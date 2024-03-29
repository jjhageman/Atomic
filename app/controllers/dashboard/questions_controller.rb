module Dashboard
  class QuestionsController < BaseController
    def show
    end

    def edit
    end

    def update
      if @profile.update_attributes(params[:profile])
        redirect_to dashboard_questions_path, notice: 'The answers to your questions have been saved'
      else
        render action: 'edit'
      end
    end
  end
end
