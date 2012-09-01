class KeysController < ApplicationController
  def set_key
    $redis.set params[:redis_key], params[:redis_value]
    redirect_to root_path
  end
  
  def get_key
    @key   = params[:redis_key]
    @value = $redis.get @key
  end
end
