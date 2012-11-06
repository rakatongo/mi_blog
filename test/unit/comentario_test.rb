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

require 'test_helper'

class ComentarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
