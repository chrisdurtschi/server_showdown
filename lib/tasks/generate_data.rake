task "data:generate", [:count] => :environment do |t, args|
  count = args[:count] || 1000
  count.to_i.times do
    Restaurant.create \
      name: Forgery::Name.company_name,
      address: Forgery::Address.street_address,
      city: Forgery::Address.city,
      state: Forgery::Address.state,
      zip: Forgery::Address.zip,
      phone: Forgery::Address.phone,
      description: Forgery::LoremIpsum.sentences(100)
  end
end
