class Account < ApplicationRecord
  belongs_to :user
  after_create :set_name

  private

  def set_name
    update(name: user.user_name)
  end
end
