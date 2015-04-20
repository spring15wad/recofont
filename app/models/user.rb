class User < ActiveRecord::Base
  belongs_to :team

  def self.find_or_create_from_auth_hash(hash)
    if @user = find_by_provider_and_uid(hash['provider'], hash['uid'])
      @user
    else
      @user = create(username: hash['info']['nickname'], provider: hash['provider'], uid: hash['uid'])
    end
  end

end
