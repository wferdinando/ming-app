class Tag < ApplicationRecord
  belongs_to :user
  has_many :tag_contents, dependent: :destroy
  has_many :contents, through: :tag_contents

  validates :name, presence: true, uniqueness: { scope: :user_id }
end
