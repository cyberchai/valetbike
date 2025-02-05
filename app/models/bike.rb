class Bike < ApplicationRecord
  :current_station_identifier
  validates_presence_of    :identifier 
 
                         #  :station_id
 
  validates_uniqueness_of  :identifier


  belongs_to :current_station, class_name: :Station, foreign_key: :current_station_id, optional: true

end
