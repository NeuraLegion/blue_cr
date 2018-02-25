require "csv"

module BlueCr
  module DbGattServices
    extend self

    def by_uuid(uuid : String)
      bytes = uuid[4..7]
      table.each do |row|
        if row["Assigned Number"].strip.downcase == "0x#{bytes}".downcase
          return row.row.to_h
        end
      end
      nil
    end

    private def table
      CSV.new(File.read("#{__DIR__}/db/gatt_service.csv"), headers: true)
    end
  end
end
