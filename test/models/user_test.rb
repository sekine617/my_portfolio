# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  last_name       :string(255)      not null
#  first_name      :string(255)      not null
#  last_hurigana   :string(255)      not null
#  first_hurigana  :string(255)      not null
#  password_digest :string(255)      not null
#  email           :string(255)      not null
#  phone_number    :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
