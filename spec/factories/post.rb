FactoryBot.define do
  factory :post do
    title {'たいとる'}
    category {'かてごり'}
    content {'本文'}
    rate {3}
    user_id{1}
  end
end
