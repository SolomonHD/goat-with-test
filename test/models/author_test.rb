require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  setup do
  end

  test "data exists" do
    assert_equal "Teddy R", authors(:one).name
  end

  test "unique works" do
    teddy2 = Author.new(name: "Teddy S", email: "rose@red.com", password_digest: "goat")
    refute teddy2.save
  end

  test "database saves new changes" do
    Author.create(name: "Taft Possem", email: "taft@man.com", password_digest: "goat")
    assert_equal 3, Author.count
  end
end
