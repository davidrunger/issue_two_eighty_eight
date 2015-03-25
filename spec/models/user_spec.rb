require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is a User' do
    expect(User.new).to be_a(User)
  end
end
