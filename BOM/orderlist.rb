require "csv"

class Part < Struct.new(:value, :arrowPN, :lcscPN, :qty)
	def initialize(value, arrowPN, lcscPN, qty = 0); super end
end

parts = []

csvFiles = ["C245_conn.csv", "OtterIron_PRO_Bot.csv", "OtterIron_PRO_Top.csv"]
csvFiles.each do |file|
	CSV.foreach(file, headers: true, :header_converters=> lambda {|f| f.strip}) do |row|
		unless parts.any? { |part| (part[:lcscPN] == row["LCSC"]) && (part[:arrowPN] == row["Arrow"]) }
			parts << Part.new(row["Value"], row["Arrow"], row["LCSC"], 1)
		else
			parts.select { |part| (part[:lcscPN] == row["LCSC"]) && (part[:arrowPN] == row["Arrow"]) }.first[:qty] += 1
		end
	end
end

puts "| Value | Qty | Arrow P/N | LCSC P/N |"
puts "|-------|-----|-----------|----------|"
parts.each do |part|
	puts "| #{part[:value]} | #{part[:qty]} | #{part[:arrowPN]} | #{part[:lcscPN]} |"
end
