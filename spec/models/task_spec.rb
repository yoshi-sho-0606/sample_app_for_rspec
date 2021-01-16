require 'rails_helper'

RSpec.describe Task, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "is invalid without a title" do
       task = FactoryBot.build(:task)
       task.save
       expect(task.errors[:title]).to include("can't be blank")

  end

  it "is invalid without a status" do
       task = FactoryBot.build(:task)
       task.save
       expect(task.errors[:status]).to include("can't be blank")
  end

end
