class Post < ApplicationRecord
    belongs_to :user
    mount_uploader :cover_filename, ImageUploader
    scope :published, -> { where(publish: true) }
    scope :unpublished, -> { where(publish: false) }
    validates :title, presence: true
    validates :body, presence: true
  end
  