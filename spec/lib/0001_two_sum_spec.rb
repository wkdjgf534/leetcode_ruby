# frozen_string_literal: true

require_relative '../../lib/0001_two_sum'

RSpec.describe '#two_sum' do
  subject { two_sum(nums, target) }

  context 'when nums [2, 7, 11, 15] and target 9' do
    let(:nums) { [2, 7, 11, 15] }
    let(:target) { 9 }

    it { is_expected.to match([0, 1]) }
  end

  context 'when nums [3, 2, 4] and target 6' do
    let(:nums) { [3, 2, 4] }
    let(:target) { 6 }

    it { is_expected.to match([1, 2]) }
  end

  context 'when nums = [3, 3] and target = 6' do
    let(:nums) { [3, 3] }
    let(:target) { 6 }

    it { is_expected.to match([0, 1]) }
  end

  context 'when nums = [1, 2, 3, 4] and target = 10' do
    let(:nums) { [1, 2, 3, 4] }
    let(:target) { 10 }

    it { is_expected.to be_empty }
  end
end
