CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage :fog
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     'xxxx',

      aws_secret_access_key: 'xxxx',

      region:                'Oregon'

    }
    config.fog_directory  = 'chieh-store'

  else
    config.storage :file
  end
end
