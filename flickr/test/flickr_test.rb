require 'flickr'
require 'test/unit'

class FlickrTest < Test::Unit::TestCase
  def test_flickr
    api_key, secret = File.read("#{Dir.pwd}/flickr/test/key_and_secret").split
    xml = Flickr.new(api_key, secret)
              .tags.getListUser('user_id' => '59532755@N00')
    assert_not_nil xml['tags']
  end
end