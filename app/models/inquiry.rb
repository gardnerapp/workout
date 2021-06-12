# == Schema Information
#
# Table name: inquiries
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  goals      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Inquiry < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :goals, presence: true

  def send_mail
    # julios email, with model
  end

end
