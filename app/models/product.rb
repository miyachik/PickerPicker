# frozen_string_literal: true
class Product < ActiveRecord::Base
  has_many :stories
end
