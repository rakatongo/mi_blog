# == Schema Information
#
# Table name: comentarios
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  email      :string(255)
#  cont       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#

class Comentario < ActiveRecord::Base
  attr_accessible :nombre, :email, :cont
  belongs_to :post
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


  #validates :post_id, presence: true
  validates :cont, :email, :nombre, presence: true
  validates :email, format: { with: EMAIL_FORMAT }
  validates :cont, length: { maximum: 1000 }
  default_scope order: 'comentarios.created_at DESC'

end
