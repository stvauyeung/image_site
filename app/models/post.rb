require "open-uri"

class Post < ActiveRecord::Base
  attr_accessible :image_url, :title
  attr_accessor :picture_file_name
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  def picture_from_url(url)
  	self.picture = URI.parse(url)
  end
  
end
