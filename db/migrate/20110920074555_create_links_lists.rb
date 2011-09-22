class CreateLinksLists < ActiveRecord::Migration
  def change
    create_table :links_lists do |t|
      t.string :twitter_url
      t.string :facebook_url
      t.string :tumblr_url
      t.string :flickr_url
      t.string :yelp_url
      t.references :profile

      t.timestamps
    end

    add_index :links_lists, :profile_id
  end
end
