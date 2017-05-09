# frozen_string_literal: true
class Comic < ActiveRecord::Base
  belongs_to :story
end
