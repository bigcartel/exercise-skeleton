FactoryBot.define do
  factory :account do
    sequence(:subdomain) { |n| "subdomain#{n}" }
    owner_email { "joe@cool.org" }
    plan { gold_plan }
  end
end
