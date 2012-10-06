# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :list do
    uuid "MyString"
    name "MyString"
    description "MyText"
    admin nil
  end
end
