Fabricator(:note) do
  note { Faker::Lorem.sentence }
  consequence { 'warning' }
  
  after_build do |n|
    n.girl ||= Girl.last || Fabricate(:girl)
    n.admin ||= Admin.last || Fabricate(:admin)
  end
end

