class CreateDisplaySettings < ActiveRecord::Migration
  def change
    create_table :display_settings do |t|
      t.string :header_font
      t.integer :header_font_size
      t.string :body_font
      t.references :profile

      t.timestamps
    end

    add_index :display_settings, :profile_id
  end
end
