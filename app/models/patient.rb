class Patient < ApplicationRecord
   
    def self.import(file)
        spreadsheet = Roo::Spreadsheet.open(file.path)
        header = spreadsheet.row(1)
        (2..spreadsheet.last_row).each do |i|
          row = Hash[[header, spreadsheet.row(i)].transpose]
          patient = find_by(id: row["id"]) || new
          patient.name = row['name']
          patient.dob = row['date']
          patient.number = row['number']
          patient.description = row['description']
          patient.save!
        end
      end  
end
