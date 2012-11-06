# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  titulo     :string(255)
#  contenido  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base  
  attr_accessible :contenido, :titulo
  has_many :comentarios, dependent: :destroy

  
  validates :contenido, :titulo, presence: true 
  validates :titulo, length: { minimum: 5, maximum: 50 }
  validates :contenido, length: { minimum: 10, maximum: 700 }
  

  default_scope order: "posts.created_at DESC"
end
