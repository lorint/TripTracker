class Flight
  include Mongoid::Document
  field :departure_airport, type: String
  field :arrival_airport, type: String
  field :departure_time, type: Time
  field :airline, type: String
  field :flight_no, type: Integer
end
