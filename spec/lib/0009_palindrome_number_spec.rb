# frozen_string_literal: true

require_relative '../../lib/0009_palindrome_number'

RSpec.describe '#palindrome_number' do
  subject { palindrome?(num) }

  context 'when num = 121' do
    let(:num) { 121 }

    it { is_expected.to be_truthy }
  end

  context 'when num = -121' do
    let(:num) { -121 }

    it { is_expected.to be_falsey }
  end

  context 'when num = 10' do
    let(:num) { 10 }

    it { is_expected.to be_falsey }
  end

  context 'when num = 0' do
    let(:num) { 0 }

    it { is_expected.to be_truthy }
  end
end
