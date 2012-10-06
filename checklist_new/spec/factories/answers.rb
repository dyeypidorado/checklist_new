# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    value "MyString"
    list_item nil
    inspector nil
  end
end
