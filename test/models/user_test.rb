require "test_helper"

class UserTest < ActiveSupport::TestCase
  def test_user_is_valid_when_props_are_specified 
    user=User.new(nickname:'user_name',email:'example@gmail.ru',password: "aaaaa",password_confirmation: "aaaaa")
    user.save
    assert user.valid?, 'User should be valid '
  end

  def  test_user_without_props 
    user=User.new(nickname:'',email:'',password: "",password_confirmation: "")
    user.save
    refute user.valid?, 'User without properties fails validation '
  end

  def test_user_with_empty_email 
    user=User.new(nickname:'user_name',email:"",password: "aaaaa",password_confirmation: "aaaaa")
    user.save
    refute user.valid?, 'User with empty email fails validation '
  end

  def test_user_with_empty_nickname 
    user=User.new(nickname:'',email:'example@gmail.ru',password: "aaaaa",password_confirmation: "aaaaa")
    user.save
    refute user.valid?, 'User with empty nickname fails validation '
  end

  def test_user_with_wrong_pas_confirmation 
    user=User.new(nickname:'user_name',email:'example@gmail.ru',password: "aaaaa",password_confirmation: "bb")
    user.save
    refute user.valid?, 'User with wrong password confirmation fails validation '
  end

  def test_user_without_password
    user=User.new(nickname:'user_name',email:'example@gmail.ru',password: "",password_confirmation: "")
    user.save
    refute user.valid?, 'User without password fails validation '
  end



end
