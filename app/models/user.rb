class User < ActiveRecord::Base
  def self.find_or_create_from_auth_hash(auth_hash)
    provider = auth_hash[:provider]
    uid = auth_hash[:uid]
    nickname = auth_hash[:info][:nickname]
    image_url = auth_hash[:info][:image]

    user = User.find_by(provider: provider, uid: uid)
    if user
      return user
    else
      user = User.new(provider: provider, uid: uid, nickname: nickname, image_url: image_url)
      user.save
      return user
    end
  end
end
