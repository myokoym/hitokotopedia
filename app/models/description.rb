class Description < ActiveRecord::Base
  belongs_to :subject

  scope :by_subject_id, -> subject_id { where(subject_id: subject_id) }
  scope :recent, -> { order("descriptions.updated_at DESC") }
end
