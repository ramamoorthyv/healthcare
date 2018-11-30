namespace :patient do
  desc "TODO"
  task del: :environment do
    Patient.delete_all
  end

end
