class Flight < ApplicationRecord
    require 'csv'
    
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Flight.create! row.to_hash
        end
    end
end
