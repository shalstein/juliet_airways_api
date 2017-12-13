class PassengerSerializer < ActiveModel::Serializer
  has_many :reservations
  attributes :id , :first_name, :last_name, :middle_name, :frequent_flyer_number, :gender, :dob, :telephone, :email
end
