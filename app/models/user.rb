class User < ActiveRecord::Base
  belongs_to :team

  def self.find_or_create_from_auth_hash(hash)
    if @user = find_by_provider_and_uid(hash['provider'], hash['uid'])
      @user
    else
      @user = create(username: hash['info']['name'], provider: hash['provider'], uid: hash['uid'], email: hash['info']['email'])
    end
  end

  def self.find_by_provider_and_uid(provider, uid)
    where(provider: provider, uid: uid).first
  end

end
