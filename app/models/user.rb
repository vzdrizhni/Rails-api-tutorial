class User < ApplicationRecord
    validates :login, presence :true, :unique =>  true
    validates :provider, presence :true

    has_one :acces_token, foreign_key: "acces_token_id", dependent: :destroy
end
