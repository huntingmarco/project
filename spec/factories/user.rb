FactoryGirl.define do
    factory :user do |f|
        f.email "testus57@yahoo.com"
        f.password "123456"
        f.password_confirmation "123456"
    end
end