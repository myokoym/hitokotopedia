class Description < ActiveRecord::Base
  belongs_to :subject
  belongs_to :author
end
