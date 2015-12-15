class Relationship < ActiveRecord::Base

    belongs_to :user
    belongs_to :friend, class_name: "user"

end
