class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.references :profile

      t.timestamps
    end

    add_index :photos, :profile_id
  end
end
