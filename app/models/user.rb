class User < ApplicationRecord
  has_many :memberships
  has_many :houses, through: :memberships

  devise :timeoutable , :rememberable, :trackable, :omniauthable, omniauth_providers: ['facebook']

  def active_house_id
    main_membership = self.memberships.find_by(main: true)

    if main_membership
      return main_membership.house.id
    end

    return null
  end

  def self.find_for_facebook_oauth(auth)
     user_params = auth.slice(:provider, :uid)
     user_params.merge! auth.info.slice(:email, :first_name, :last_name)
     user_params[:facebook_picture_url] = auth.info.image
     user_params[:token] = auth.credentials.token
     user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
     user_params = user_params.to_h

     user = User.find_by(provider: auth.provider, uid: auth.uid)
     user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
     if user
       user.update(user_params)
     else
       user = User.new(user_params)
       user.save
     end

     return user
  end
end