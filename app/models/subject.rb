class Subject < ActiveRecord::Base
  has_many :description

  scope :recent, -> { order("subjects.updated_at DESC") }
end
