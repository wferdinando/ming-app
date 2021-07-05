class Content < ApplicationRecord
  belongs_to :user
  has_many :tag_contents
  has_many :tags, through: :tag_contents

  validates :title, :description, presence: true
end
