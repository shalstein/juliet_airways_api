class Reservation < ApplicationRecord
  extend Format_date

  after_create :generate_confirmation

  #self.primary_key = confirmation_number

  belongs_to :flight


  private

  MAXIMUM_ATTEMPTS = 3

  def generate_confirmation
    update(confirmation_number: SecureRandom.hex(3))
  rescue ActiveRecord::RecordNotUnique => e
    @confirmation_attempts = @confirmation_attempts.to_i + 1
    retry if @confirmation_attempts > MAXIMUM_ATTEMPTS
    raise e, "Retries Exhausted!"
  end
end
