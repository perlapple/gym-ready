class User < ActiveRecord::Base
  has_many :measurements
  has_many :routines
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :first_name, :last_name, :date_of_birth, presence: true
  validates :gender, inclusion: { in: %w(female male)}
  validates :height_in_cm, numericality: { only_integer: true, less_than: 300, greater_than: 10 }, unless: "height_in_cm.nil?"
end
