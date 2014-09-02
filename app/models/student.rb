class Student < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 2}
  validates :school_id, presence: true, length: {minimum: 2}
  validates :class_id, presence: true, length: {minimum: 2}
end
