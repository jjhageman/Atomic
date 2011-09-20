class QuestionAnswer < ActiveRecord::Base
  belongs_to :profile
  belongs_to :question
end
