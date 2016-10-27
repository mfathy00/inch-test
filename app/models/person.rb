class Person < ApplicationRecord
  # i didnt want to add that function to lib folder and create class for it then call it
  # as i want give freedom to the developer who will work after me to change what ever he need regardig
  # to the requirement also i like keep code realted to model to focus on model only

  def self.import(file)
		CSV.foreach(file, headers: true) do |row|
			person = find_by_id(row["reference"]) || new
			person.attributes = row.to_hash.slice(*row.to_hash.keys)
			person.save!
		end
	end
end
