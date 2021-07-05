class Content < ApplicationRecord
  belongs_to :user
  has_many :tag_contents, dependent: :destroy
  has_many :tags, through: :tag_contents

  validates :title, :description, presence: true
end
