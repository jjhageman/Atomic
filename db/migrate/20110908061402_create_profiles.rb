class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :zipcode
      t.date :birthday
      t.string :ethnicity
      t.string :education
      t.string :job
      t.string :height
      t.references :user

      t.timestamps
    end

    add_index :profiles, :user_id
  end
end
