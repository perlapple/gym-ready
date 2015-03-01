class Exercise < ActiveRecord::Base
  belongs_to :muscle_group
  many_to_many :routine
end
