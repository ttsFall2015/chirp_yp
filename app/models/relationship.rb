class Relationship < ActiveRecord::Base

    belongs_to :user
    belongs_to :friend, class_name: "user"
    validates :user_id, presence: true
    validates :friend_id, presence: true

end
