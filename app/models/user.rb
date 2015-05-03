class User < ActiveRecord::Base
  belongs_to :team

  def self.find_or_create_from_auth_hash(hash)
    if @user = find_by_provider_and_uid(hash['provider'], hash['uid'])
      @user
    else
      @user = create(username: hash['login'], provider: hash['provider'], uid: hash['uid'], team_id: 1)
    end
  end

  def self.find_by_provider_and_uid(provider, uid)
    where(provider: provider, uid: uid).first
  end

end
