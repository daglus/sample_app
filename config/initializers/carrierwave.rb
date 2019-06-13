CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave'

  config.fog_credentials = {
    :provider               => 'AWS',
    :s3_access_key_id      => ENV['S3_ACCESS_KEY'],
    :s3_secret_access_key  => ENV['S3_SECRET_KEY'],
    :region                 => 'eu-north-1',
  }
  config.fog_directory  = ENV['S3_Bucket']
end
