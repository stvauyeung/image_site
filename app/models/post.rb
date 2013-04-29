require 'rubygems'
require 'open-uri'

class Post < ActiveRecord::Base
  attr_accessible :image_url, :title
  has_attached_file :picture

  def picture_url(url)
  	self.picture = open(url)
  end

end
