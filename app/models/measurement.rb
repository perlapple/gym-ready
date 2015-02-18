class Measurement < ActiveRecord::Base
  belongs_to :user

  validates :date, presence: true
  validates :body_fat_percentage, numericality: { less_than: 100, greater_than: 0 }, if: "body_fat_percentage.present?"
  validates :weight, numericality: { less_than: 500, greater_than: 0 }, if: "weight.present?"
  validate :weight_or_body_fat_present

  def weight_or_body_fat_present
    if weight.nil? && body_fat_percentage.nil?
      self.errors.add(:base, :weight_or_body_fat)
    end
  end
end
