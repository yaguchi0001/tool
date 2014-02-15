require "csv"

buf_row0 = "0";                                                                  
CSV.open("story_title_master_q.csv", "w") do |csv|
    CSV.foreach("story_title_master.csv", "r") do |row|
	unless row[0] == buf_row0
	    csv << row
	end
	buf_row0 = row[0]
    end
end

