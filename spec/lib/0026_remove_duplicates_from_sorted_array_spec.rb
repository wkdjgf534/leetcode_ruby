# frozen_string_literal: true

require_relative '../../lib/0026_remove_duplicates_from_sorted_array'

RSpec.describe '#remove_duplicates' do
  subject { remove_duplicates(nums) }

  context 'when nums = [1, 1, 2]' do
    let(:nums) { [1, 1, 2] }

    it { is_expected.to eq(2) }
  end

  context 'when nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]' do
    let(:nums) { [0, 0, 1, 1, 1, 2, 2, 3, 3, 4] }

    it { is_expected.to eq(5) }
  end

  context 'when nums = []' do
    let(:nums) { [] }

    it { is_expected.to eq(0) }
  end
end
