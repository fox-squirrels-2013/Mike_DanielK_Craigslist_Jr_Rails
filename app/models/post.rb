class Post < ActiveRecord::Base
  attr_accessible :category_id, :title, :description, :price, :email
  belongs_to :category
  after_create :generate_key, :email_key

  def generate_key
    key = ''
    rand_chars = ['1','2','3','4','5','6','7','8','9','0','a','b','c',
                 'd','e','f','g','h','i','j','k','l','m','n','o','p',
                 'q','r','s','t','u','v','w','x','y','z','A','B','C',
                 'D','E','F','G','H','I','J','K','L','M','N','O','P',
                 'Q','R','S','T','U','V','W','X','Y','Z']
    10.times do
      key += rand_chars.sample
    end
    self.edit_key = key
    self.save
  end

  def email_key
    # this code would email out key
  end
end