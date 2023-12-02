require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_user_is_valid_when_props_are_specified 
    user=User.new(:nickname,:email)
    assert user.valid?, 'User should be valid '
  end

  def test_user_without_props 
    user=User.new()
    refute user.valid?, 'User without properties fails validation '
  end

  def test_user_with_empty_email 
    user=User.new(:nickname, email:"")
    refute user.valid?, 'User with empty email fails validation '
  end

  # def test_user_with_empty_nickname 
  #   user=User.new(nickname:"", :email)
  #   refute user.valid?, 'User with empty nickname fails validation '
  # end
end
