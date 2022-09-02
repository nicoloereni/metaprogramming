require 'test/unit'
require_relative '../lib/movie'
require 'mocha/setup'

class MovieTest < Test::Unit::TestCase
  setup do
    SecureRandom.stubs(:uuid).returns('an_id')
  end

  def test_movie_creation
    movie = Movie.new
    assert_equal('a title', movie.title = "a title")
    assert_equal('a director', movie.director = "a director")
    assert_equal('SELECT title FROM Movie WHERE id=an_id', movie.get('title'))
    assert_equal("UPDATE Movie SET title='pirippi' WHERE id=an_id", movie.set('title', 'pirippi'))
  end
end