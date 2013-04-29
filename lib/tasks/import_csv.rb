require 'csv'    

csv_text = File.read('app/assets/funnies.csv', :encoding => 'windows-1251:utf-8')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Post.create!(row.to_hash)
end