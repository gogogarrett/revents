require 'redis'
require 'json'
require 'wisper'
require 'spec_helper'

describe 'fire a message to the bus' do
  it 'when a message arrives' do
    $redis = Redis.new
    command = {"type" => "AddToBasketCommand", "basket_id" => 1, "article_id" => 1}
    $redis.publish 'AddToBasket', command.to_json
  end
end
