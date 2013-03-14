require 'spec_helper'

describe Entry do
  context 'associations' do
    it { should belong_to :user }
  end

  context 'validations' do
    subject { Entry.make }

    %w( body ).each do |attr|
      it { should validate_presence_of attr }
    end
  end
end
