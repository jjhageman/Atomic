class CreateQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :question_answers do |t|
      t.text :body
      t.references :profile
      t.references :question

      t.timestamps
    end

    add_index :question_answers, [:profile_id, :question_id], :unique => true
  end
end
