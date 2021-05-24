class Inquiry < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :goals, presence: true

  def send_mail
    # julios email, with model
  end

end
