class LinksList < ActiveRecord::Base
  belongs_to :profile

  SITES = %w[twitter facebook tumblr flickr yelp]
end
