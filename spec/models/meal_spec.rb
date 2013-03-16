require 'spec_helper'

describe Meal do
  context 'associations' do
    it { should belong_to :user }
  end

  context 'validations' do
    subject { Meal.make }

    %w( body ).each do |attr|
      it { should validate_presence_of attr }
    end
  end
end
