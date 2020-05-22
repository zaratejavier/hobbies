class Hobby < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
