require 'test/unit'
require_relative '../lib/movie'

class MovieTest < Test::Unit::TestCase
  def test_movie_creation
    movie = Movie.new
    assert_equal('a title', movie.title = "a title")
    assert_equal('a director', movie.director = "a director")
  end
end