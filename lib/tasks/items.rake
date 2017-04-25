namespace :items do
  desc "TODO"
  task delete_7_days_old: :environment do
  end
   Item.where(['created_at < ?', 7.days.ago]).destroy_all
end
