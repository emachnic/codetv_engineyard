config = YAML.load_file 'config/redis.yml'
$redis = Redis.new host: config[Rails.env]['host'],
                   port: config[Rails.env]['port']