FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "example_#{n}@gmail.com"}
    password { "password" }
    password_confirmation { "password" }

    trait :no_email_user do
      email { '' }
    end
   end
  end
