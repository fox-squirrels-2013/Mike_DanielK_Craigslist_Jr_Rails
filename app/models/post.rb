class Post < ActiveRecord::Base
  attr_accessible :category_id, :title, :description, :price, :email
  belongs_to :category
end