# frozen_string_literal: true
class Story < ActiveRecord::Base
  has_many :comics
  belongs_to :product
  has_one_attached :image_url
end
