class Post < ActiveRecord::Base  
  attr_accessible :contenido, :titulo

  validates :contenido, :titulo, presence: true 
  validates :contenido, :titulo, length: { minimum: 5 }
  validates :titulo, length: { maximum: 50 }
end
