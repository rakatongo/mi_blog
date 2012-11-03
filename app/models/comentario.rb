class Comentario < ActiveRecord::Base
  attr_accessible :cont, :email, :nombre
  belongs_to :post
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :cont, :email, :nombre, presence: true
  validates :cont, length: { minimum: 10 }
  validates :nombre, length: { minimum: 5, maximum: 50}
  validates :email, format: { with: EMAIL_FORMAT }

end
