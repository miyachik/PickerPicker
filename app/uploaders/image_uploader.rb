# frozen_string_literal: true
class ImageUploader
  def upload(image, s3_path)
    storage = Fog::Storage.new(
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: ENV['AWS_REGION']
    )
    bucket = storage.directories.get(ENV['BUCKET_NAME'])

    bucket.files.create(key: s3_path, public: true, body: open(image.path))
  end
end
