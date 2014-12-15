class Task < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  validates :comment, presence: true
end
