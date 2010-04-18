namespace :fsde do
  
  task :update => :environment do
    State.delete_all
    Payment.connection.select_all('SELECT geo1 as name, SUM(total) as total FROM payments GROUP BY geo1').each do |r|
      State.create!(:name => r['name'], :total => r['total'])
    end
  end
  
  task :import => :environment do
    require 'fastercsv'
  
    i = 0
    FasterCSV.foreach(ENV['FILE'], :col_sep => ';') do |r|
      next unless r[0] == 'DE'
      i += 1
      puts "making progress #{i}..." if i % 1000 == 0
      Payment.create(
        :country => r[0],
        :year => r[1].to_i,
        :recipient => r[2],
        :global_recipient => r[3],
        :name => r[4],
        :zipcode => r[5],
        :town => r[6],
        :geo1 => r[7],
        :geo2 => r[8],
        :geo3 => r[9],
        :country_recipient => r[10],
        :direct => r[11].to_f,
        :indirect => r[12].to_f,
        :rural => r[13].to_f,
        :total => r[14].to_f
      )
    end
  end
end