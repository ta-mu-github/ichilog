FactoryBot.define do
  factory :user do
    id {1}
    user_name {'テストユーザ'}
    email {'test@example.com'}
    profile_image{}
    self_introduction{'aaa'}
    password {'password'}
  end
end


