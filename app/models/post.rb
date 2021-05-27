class Post < ApplicationRecord
    belongs_to :user
    validates :user_id, presence: true
    validates_inclusion_of :kind, :in => ['albums', 'songs', 'artists']
end
