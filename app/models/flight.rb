require 'csv'
require 'roo'

class Flight < ApplicationRecord
    
    @rows = Array.new
    @header = Array.new
    def self.import(file)
        CSV.foreach(file.path, headers: false) do |row|
            @rows << row
        end
        header = @rows.shift
        @rows.each do |row|
            create_flight(row[0].split("\t"))
        end
    end
    
    def is_a_departure?
        self.scheddepapt == 'LGA'
    end
    
    private
    
    def self.create_flight(row)
        Flight.create!
        flight = Flight.last
        flight.assign_attributes(
            flightid: row[0],
            airlinecode: row[1],
            flightnumber: row[2],
            scheddepapt: row[3],
            schedarrapt: row[4],
            scheddeputc: row[5],
            schedarrutc: row[6],
            scheddeplocal: row[7],
            schedarrlocal: row[8],
            diversionstatus: row[9],
            recovflightid: row[10],
            opairlinecode: row[11],
            opflightnumber: row[12],
            altdepapt: row[13],
            altarrapt: row[14],
            depterminal: row[15],
            depgate: row[16],
            arrterminal: row[17],
            arrgate: row[18],
            baggage: row[19],
            servicetype: row[20],
            aircrafttype: row[21],
            unscheduled: row[22],
            depcountrycode: row[23],
            arrcountrycode: row[24],
            tailnumber: row[25],
            regairlinecode: row[26],
            regflightnumber: row[27],
            origdate: row[28],
            prevfltalcode: row[29],
            prevfltnumber: row[30],
            prevfltschedarrlocal: row[31],
            prevfltschedarrutc: row[32],
            outgatelocal: row[33],
            outgateutc: row[34],
            outgateaccuracy: row[35],
            inairlocal: row[36],
            inairutc: row[37],
            inairaccuracy: row[38],
            landedlocal: row[39],
            landedutc: row[40],
            landedaccuracy: row[41],
            ingatelocal: row[42],
            ingateutc: row[43],
            ingateaccuracy: row[44],
            diversiontype: row[45],
            simplemaxalt: row[46],
            simpleavgalt: row[47],
            simplemaxspeed: row[48],
            simpleavgspeed: row[49],
            distancegc: row[50],
            timealoft: row[51],
            cancelled: row[52],
            acttaxitimedep: row[53],
            acttaxitimearr: row[54],
            minlatedeparted: row[55],
            minlatearrived: row[56]
        )
        flight.save!

        p "Flight #{flight.airlinecode}#{flight.flightnumber} flying from #{flight.schedarrapt} to #{flight.scheddepapt} has been created!\n"
    end
end
