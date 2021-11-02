require 'rails_helper'

RSpec.describe 'モデル', type: :model do 
  describe '一覧表示' do
    before do
    end
    FactoryBot.create(:user)
    FactoryBot.create(:post)    
  end
end
