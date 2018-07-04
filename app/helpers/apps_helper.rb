module AppsHelper
  require 'digest/md5'

  def app_image(app)
    color = Digest::MD5.hexdigest(app.name)[0..5]
    "https://dummyimage.com/300x300/#{color}/ffffff.png&text=#{app.name}"
  end
end
