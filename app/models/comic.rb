# frozen_string_literal: true
class Comic < ActiveRecord::Base
  belongs_to :story

  has_one_attached :image_url

  enum emotion_type: {
    happy: 0,
    angry: 1,
    sad: 2,
    excite: 4,
  }
end
