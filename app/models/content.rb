class Content < ActiveRecord::Base
    validates :name, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: {with: VALID_EMAIL_REGEX}, unless: "email.empty?"
    validates :email, presence: true
    validates :content,presence: true
    validates :title,presence: true
end
