# frozen_string_literal: true

require_relative '../../lib/0014_longest_common_prefix'

RSpec.describe '#longest_common_prefix' do
  subject { longest_common_prefix(words) }

  context 'when words = %w[flower flow flight]' do
    let(:words) { %w[flower flow flight] }

    it { is_expected.to eq('fl') }
  end

  context 'when words = %w[dog racecar car]' do
    let(:words) { %w[dog racecar car] }

    it { is_expected.to be_empty }
  end

  context 'when words = []' do
    let(:words) { [] }

    it { is_expected.to be_nil }
  end
end
